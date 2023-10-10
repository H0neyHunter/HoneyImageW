//
//  listPhoto.swift
//  HoneyImageW
//
//  Created by Ümit Örs on 10.10.2023.
//

import Foundation

struct listPhoto: Codable,Identifiable {
    var id : String {image}
    let name : String
    let image : String
}

let zeynep = listPhoto(name: "Zeynep", image: "img1")
let uzb = listPhoto(name: "Ü-Zeynep-B", image: "img2")
