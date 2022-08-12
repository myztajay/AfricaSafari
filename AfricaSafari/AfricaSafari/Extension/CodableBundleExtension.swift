//
//  CodableBundleExtension.swift
//  AfricaSafari
//
//  Created by Rafael Fernandez on 8/12/22.
//

import Foundation

extension Bundle {
    func decode(fileToDecode file: String) -> [CoverImage] {
        // locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate")
        }
        
        // create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load bundle")
        }
        
        // create decoder
        let decoder = JSONDecoder()
        
        // create property for decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode")
        }
        
        // return data
        return loaded
    }
}
