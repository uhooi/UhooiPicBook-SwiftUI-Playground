//
//  View+Material.swift
//  UhooiPicBookSwiftUIPlayground (iOS)
//
//  Created by uhooi on 14.7.2022.
//

import SwiftUI

extension View {
    func elevate(elevation: CGFloat) -> some View {
        shadow(
            color: .init(white: 0, opacity: 0.24),
            radius: elevation,
            x: 0,
            y: elevation
        )
    }
}

struct Elevate_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 28) {
            uhooiLabel(elevation: 0)
            uhooiLabel(elevation: 1)
            uhooiLabel(elevation: 2)
            uhooiLabel(elevation: 3)
        }
        .padding(.horizontal, 24)
    }
    
    private static func uhooiLabel(elevation: CGFloat) -> some View {
        Label {
            Text("uhooi")
        } icon: {
            Image("uhooi")
                .resizable()
        }
        .labelStyle(.monsterListCell)
                .padding(16)
                .background(
                    Color(.systemBackground)
                        .cornerRadius(3)
                        .elevate(elevation: elevation)
                )
    }
}
