//
//  ContentView.swift
//  UISamples
//
//  Created by Veli Bacik on 21.07.2021.
//

import SwiftUI

struct ContentView: View {
    let imageManager: ImageManager = ImageManager()


    @State var isLoading: Bool = false

    var body: some View {
        GeometryReader { view in
            VStack {
                BackgroundImageView(backgroundImage: imageManager.loginHeaderImage, logoImage: imageManager.projectLogo).frame(width: view.size.width, height: view.size.height * 0.7, alignment: .center)
                Rectangle().fill(Color.white)
                Button("Hello") {
                }.frame(width: view.size.width * 0.9, height: view.size.height * 0.09).background(Color.red).foregroundColor(Color.white)
            }
        }.edgesIgnoringSafeArea(.top)
    }

    private func bodySampleView() -> some View {
        return VStack {
            ZStack(content: {
                Text("Placeholder2")
            }).frame(maxHeight: 434)
            Rectangle().fill(Color.red).frame(maxHeight: 308)
            Button("Hello") {

            }.frame(maxWidth: .infinity, maxHeight: 70).background(Color.blue).foregroundColor(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
