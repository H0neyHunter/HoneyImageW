//
//  ContentView.swift
//  HoneyImageW
//
//  Created by Ümit Örs on 10.10.2023.
//

import SwiftUI
import WidgetKit


let arrayList = [zeynep,uzb]
struct ContentView: View {
    @AppStorage(Constans.storageName, store: UserDefaults(suiteName: Constans.groupName))
    var data = Data()
    var body: some View {
        VStack {
            ForEach(arrayList) { list in
                itemViewMain(list: list).onTapGesture {
                    saveData(list: list)
                }
            }
        }
    }
    func saveData(list: listPhoto){
        if let data = try? JSONEncoder().encode(list) {
            self.data = data
            WidgetCenter.shared.reloadTimelines(ofKind: Constans.kind)
        }
    }
}

#Preview {
    ContentView()
}
