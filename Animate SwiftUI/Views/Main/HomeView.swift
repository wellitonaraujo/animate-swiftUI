//
//  HomeView.swift
//  Animate SwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 05/02/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // MARK: Background Color
            Color.background
                .ignoresSafeArea()
            
            // MARK: Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // MARK: House Color
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            
            // MARK: Current Weather
            VStack(spacing: -10) {
                Text("Mostreal")
                    .font(.largeTitle)
                
                VStack {
                    Text("19°")
                        .font(.system(size: 96, weight: .thin))
                        
                    +
                    Text("\n ")
                    +
                    Text("Mostly Clear")
                        .font(.title3)
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                    
                    Text("H:24 L:17")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                Spacer()
            }
            .padding(.top, 51)
        }
    }
    
    private var attributedString: AttributedString {
        var string = AttributedString("19°" + "\n " + "Mostly Clear")
            return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
