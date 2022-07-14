//
//  View+Material.swift
//  UhooiPicBookSwiftUIPlayground (iOS)
//
//  Created by uhooi on 14.7.2022.
//

import SwiftUI

extension View {
    func elevate(elevation: CGFloat) -> some View {
        self.shadow(
            color: .init(white: 0, opacity: 0.24),
            radius: elevation,
            x: 0,
            y: elevation
        )
    }
}
