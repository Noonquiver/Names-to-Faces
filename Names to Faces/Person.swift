//
//  Person.swift
//  Names to Faces
//
//  Created by Camilo Hernández Guerrero on 3/07/22.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
