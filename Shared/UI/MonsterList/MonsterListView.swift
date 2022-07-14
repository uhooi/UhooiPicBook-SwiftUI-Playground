//
//  MonsterListView.swift
//  UhooiPicBookSwiftUIPlayground (iOS)
//
//  Created by uhooi on 2022/07/13.
//

import SwiftUI

struct MonsterListView: View {
    private let columns = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 28) {
                MonsterListCellView(iconName: "uhooi", name: "uhooi")
                MonsterListCellView(iconName: "uhooi", name: "とてつもなく長い名前のモンスター")
            }
            .padding(.horizontal, 24)
        }
    }
}

struct MonsterListView_Previews: PreviewProvider {
    static var previews: some View {
        MonsterListView()
    }
}
