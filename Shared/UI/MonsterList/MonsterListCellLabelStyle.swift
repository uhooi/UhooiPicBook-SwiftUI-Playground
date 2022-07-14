//
//  MonsterListCellLabelStyle.swift
//  UhooiPicBookSwiftUIPlayground (iOS)
//
//  Created by uhooi on 2022/07/13.
//

import SwiftUI

struct MonsterListCellLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: 32) {
            configuration.icon
                .scaledToFit()
                .frame(width: 68, height: 68)
            configuration.title
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

extension LabelStyle where Self == MonsterListCellLabelStyle {
    static var monsterListCell: MonsterListCellLabelStyle {
        .init()
    }
}

struct MonsterListCellLabelStyle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Label {
                Text("uhooi")
            } icon: {
                Image("uhooi")
                    .resizable()
            }
            Label {
                Text("とてつもなく長い名前のモンスター")
            } icon: {
                Image("uhooi")
                    .resizable()
            }
        }
        .labelStyle(.monsterListCell)
    }
}
