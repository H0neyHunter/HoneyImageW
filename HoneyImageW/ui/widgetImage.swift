//
//  widgetImage.swift
//  HoneyImageW
//
//  Created by Ümit Örs on 10.10.2023.
//

import SwiftUI

struct widgetImage: View {
    var image : Image
    var body: some View {
        ZStack {
            image.centerCropped()
        }.padding(-20)
        
    }
}

#Preview {
    widgetImage(image: Image("img1"))
}
extension Image {
    func centerCropped() -> some View {
        GeometryReader { geo in
            self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}
