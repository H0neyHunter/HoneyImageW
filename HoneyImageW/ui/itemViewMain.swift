//
//  itemViewMain.swift
//  HoneyImageW
//
//  Created by Ümit Örs on 10.10.2023.
//

import SwiftUI

struct itemViewMain: View {
    let list : listPhoto
    var body: some View {
        let width = UIScreen.main.bounds.width
        HStack {
            circleImage(image: Image(list.image)).frame(width: width / 3, height: width / 3)
            Spacer()
            Text(list.name).font(.largeTitle).bold().italic().foregroundStyle(Color.purple)
            Spacer()
            Spacer()
        }.frame(width: width,alignment: .center)
    }
}

#Preview {
    itemViewMain(list: zeynep)
}
