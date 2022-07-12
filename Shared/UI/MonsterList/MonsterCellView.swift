//
//  MonsterCellView.swift
//  UhooiPicBookSwiftUIPlayground (iOS)
//
//  Created by uhooi on 2022/07/11.
//

import SwiftUI

struct MonsterCellView: View {
    var iconName: String
    var name: String
    
    var body: some View {
        HStack(spacing: 32) {
            Image(iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 68, height: 68)
            Text(name)
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(16)
        .background(
            Color(.systemBackground)
                .cornerRadius(3)
                .elevate(elevation: 1)
        )
    }
}

private extension View {
    func elevate(elevation: CGFloat) -> some View {
        self.shadow(
            color: .init(white: 0, opacity: 0.24),
            radius: elevation,
            x: 0,
            y: elevation
        )
    }
}

struct MonsterCellView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 28) {
            MonsterCellView(iconName: "uhooi", name: "uhooi")
            MonsterCellView(iconName: "uhooi", name: "とてつもなく長い名前のモンスター")
        }
        .padding(.horizontal, 24)
    }
}
