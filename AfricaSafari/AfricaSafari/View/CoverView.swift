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
            ForEach(0 ..< 5 ) { item in
                Image("cover-lion")
                    .resizable()
                    .scaledToFit()
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
