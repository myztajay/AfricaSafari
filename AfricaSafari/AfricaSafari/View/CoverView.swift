//
//  CoverView.swift
//  AfricaSafari
//
//  Created by Rafael Fernandez on 8/12/22.
//

import SwiftUI

struct CoverView: View {
    //MARK: - PROPERITES
    let coverImages: [CoverImage] = Bundle.main.decode(fileToDecode: "covers.json")
    var body: some View {
        TabView{
            ForEach(coverImages) { coverImage in
                Image(coverImage.name)
                    .resizable()
                    .scaledToFill()
            } //MARK: - LOOP
        }//MARK: - TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
