//
//  MonsterListCellView.swift
//  UhooiPicBookSwiftUIPlayground (iOS)
//
//  Created by uhooi on 2022/07/11.
//

import SwiftUI

struct MonsterListCellView: View {
    var iconName: String
    var name: String
    
    var body: some View {
        Label {
            Text(name)
        } icon: {
            Image(iconName)
                .resizable()
        }
        .labelStyle(.monsterListCell)
        .padding(16)
        .background(
            Color(.systemBackground)
                .cornerRadius(3)
                .elevate(elevation: 1)
        )
    }
}

struct MonsterListCellView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 28) {
            MonsterListCellView(iconName: "uhooi", name: "uhooi")
            MonsterListCellView(iconName: "uhooi", name: "とてつもなく長い名前のモンスター")
        }
        .padding(.horizontal, 24)
    }
}
