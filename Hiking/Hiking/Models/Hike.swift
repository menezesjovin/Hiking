//
//  Hike.swift
//  Hiking
//
//  Created by Jovin Menezes on 20/04/20.
//  Copyright © 2020 Jovin Menezes. All rights reserved.
//

import Foundation
struct Hike{
    let name : String
    let imageURL : String
    let miles : Double
}
extension Hike{
    static func all() -> [Hike]{
        return [Hike(name: "Jovin", imageURL: "sal", miles: 6),Hike(name: "Jasmin", imageURL: "tom", miles: 5.8),Hike(name: "Jackson", imageURL: "tam", miles: 5)]
    }
}
