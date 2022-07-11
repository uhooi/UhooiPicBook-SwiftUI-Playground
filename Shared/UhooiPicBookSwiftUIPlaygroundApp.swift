//
//  UhooiPicBookSwiftUIPlaygroundApp.swift
//  Shared
//
//  Created by uhooi on 11.7.2022.
//

import SwiftUI

@main
struct UhooiPicBookSwiftUIPlaygroundApp: App {
    var body: some Scene {
        WindowGroup {
            VStack(spacing: 12) {
                MonsterCellView(iconName: "uhooi", name: "uhooi")
                MonsterCellView(iconName: "uhooi", name: "とてつもなく長い名前のモンスター")
            }
            .padding(.horizontal, 16)
        }
    }
}
