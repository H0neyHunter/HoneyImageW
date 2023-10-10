//
//  Tools.swift
//  HoneyImageW
//
//  Created by Ümit Örs on 10.10.2023.
//

import Foundation
import SwiftUI

class Tools {
    func appstorage() -> Data{
        @AppStorage("image", store: UserDefaults(suiteName: Constans.groupName))
        var data = Data()
        return data
    }
}
