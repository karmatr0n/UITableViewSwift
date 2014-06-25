//
//  Animal.swift
//  UITableViewSwift
//
//  Created by Alejandro Juárez Robles on 6/24/14.
//  Copyright (c) 2014 MonsterLabs. All rights reserved.
//

import UIKit

class Animal: NSObject {
    
    var title: String!
    var creator: String!
    var imageName: String!
    
    init(title: String, creator: String, imageName: String) {
        self.title = title
        self.creator = creator
        self.imageName = imageName
    }
}
