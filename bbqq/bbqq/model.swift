//
//  model.swift
//  bbqq
//
//  Created by cumulations on 10/08/22.
//

import Foundation
import UIKit
struct mulda:Codable{
    var datas:[data]?
}


struct data:Codable{
    var author:String
    var content:String
    var id:String
    private enum datacodingkeys:String, CodingKey{
        case author = "author"
        case content = "content"
        case id = "_id"
    }
}
extension data{
    init(from decoder: Decoder) throws {
        let info = try decoder.container(keyedBy: datacodingkeys.self)
        author = try info.decodeIfPresent(String.self, forKey: .author) ?? "nil"
        content = try info.decodeIfPresent(String.self, forKey: .content) ?? "nil"
        id = try info.decodeIfPresent(String.self, forKey: .id) ?? "nil"
    }
}


