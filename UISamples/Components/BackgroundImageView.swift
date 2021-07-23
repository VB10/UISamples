//
//  BackgroundImageView.swift
//  UISamples
//
//  Created by Veli Bacik on 23.07.2021.
//

import SwiftUI

struct BackgroundImageView: View {
    
    let backgroundImage: String
    let logoImage: String
    
    
    var body: some View {
        GeometryReader(content: { view in
            ZStack(alignment: .top) {
                Image(backgroundImage).resizable()
                    .frame(width: view.size.width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                Image(logoImage).frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) .padding(.top, view.size.height * 0.1)
            }
        })
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView(backgroundImage: "img_splash_header", logoImage: "ic_project_logo").previewLayout(.sizeThatFits).frame(height: 434, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
