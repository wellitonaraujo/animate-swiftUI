//
//  TabBarView.swift
//  Animate SwiftUI
//
//  Created by Welliton da Conceicao de Araujo on 15/02/23.
//

import SwiftUI

struct TabBarView: View {
    var action: () -> Void
    var body: some View {
        ZStack {
            // MARK: Tab Items
            HStack {
                // MARK: Expand Button
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                }
                
                // MARK: Navigation Button
                NavigationLink {
                    
                } label: {
                    Image(systemName: "list.star")
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(action: {})
            .preferredColorScheme(.dark)
    }
}
