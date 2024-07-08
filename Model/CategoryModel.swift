//
//  CategoryModel.swift
//  Shop App
//
//  Created by Ricky Primayuda Putra on 08/07/24.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
    
}

var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "choco", title: "Choco"),
    CategoryModel(icon: "wafles", title: "Waffles"),
    CategoryModel(icon: "toffee", title: "Toffee")
]
