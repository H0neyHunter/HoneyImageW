//
//  circleImage.swift
//  HoneyImageW
//
//  Created by Ümit Örs on 10.10.2023.
//

import SwiftUI

struct circleImage: View {
    var image : Image
    var body: some View {
        image.resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).overlay(Circle().stroke(Color.red,lineWidth: 1.0)).shadow(radius: 10)
    }
}

#Preview {
    circleImage(image: Image("img1"))
}
