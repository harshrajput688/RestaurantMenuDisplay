//
//  CategoryModel.swift
//  Restaurant Menu Display
//
//  Created by Harsh Rajput on 20/07/23.
//

import Foundation
// Define a struct called "Category" to represent individual food items.
struct CategoryModel{
    var id = UUID().uuidString
    var image: String
    var title: String
    var items: [CategoryItem]
}

//Create arrays of "CategoryModel" for the all Categories
var categories = [
    CategoryModel(image: "Burger1", title: "Burger", items: burgerItem),
    CategoryModel(image: "Pizza1", title: "Pizza", items: pizzaItem),
    CategoryModel(image: "Sandwich1", title: "Sandwiches", items: sandwichItem),
    CategoryModel(image: "Cake1", title: "Cakes", items: cakeItem),
    CategoryModel(image: "Biryani1", title: "Biryani", items: biryaniItem)
]

//Recommended Category
var recommendCategory = CategoryModel(image: "Pizza", title: "Recommendations", items: recommendItems)
