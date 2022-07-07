//
//  Person.swift
//  Names to Faces
//
//  Created by Camilo Hernández Guerrero on 3/07/22.
//

import UIKit

class Person: NSObject, NSCoding, NSSecureCoding {
    static var supportsSecureCoding: Bool = true
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init?(coder decoder: NSCoder) {
        name = decoder.decodeObject(forKey: "name") as? String ?? ""
        image = decoder.decodeObject(forKey: "image") as? String ?? ""
    }
    
    func encode(with encoder: NSCoder) {
        encoder.encode(name, forKey: "name")
        encoder.encode(image, forKey: "image")
    }
    
    
}
