//
//  CategoryItem.swift
//  Restaurant Menu Display
//
//  Created by Harsh Rajput on 22/07/23.
//

import Foundation

// Define a struct called "CategoryItem" to represent individual food items.
struct CategoryItem {
    let id = UUID().uuidString
    let title: String
    let image: String
    let price: Int
    let discription: String
}

// Create arrays of "CategoryItem" instances to represent different food categories.

// Category 1: Burger category
var burgerItem: [CategoryItem] = [
    CategoryItem(title: "King Size Burger", image: "Burger1", price: 100, discription: "Urban Foodies"),
    CategoryItem(title: "Ultimate Paneer Burger", image: "Burger2", price: 149, discription: "The Pizza Castle"),
    CategoryItem(title: "Veg Mexican Burger", image: "Burger3", price: 79, discription: "Hungry Oven"),
    CategoryItem(title: "Veg Paneer Makhani Burger", image: "Burger4", price: 140, discription: "Sub Hub"),
    CategoryItem(title: "Crispy Potato Burger", image: "Burger5", price: 85, discription: "Sunny Fast Food"),
    CategoryItem(title: "Anytime Burger", image: "Burger6", price: 99, discription: "Burger King")
]

// Category 2: Pizza category
var pizzaItem: [CategoryItem] = [
    CategoryItem(title: "Desi Style Paneer Pizza", image: "Pizza1", price: 549, discription: "Pizza Hut"),
    CategoryItem(title: "Farmhouse Pizza", image: "Pizza2", price: 345, discription: "Urban Foodies"),
    CategoryItem(title: "Tandoori Paneer Pizza", image: "Pizza3", price: 399, discription: "The Pizza Castle"),
    CategoryItem(title: "OTC Pizza", image: "Pizza4", price: 499, discription: "Five Star Janta"),
    CategoryItem(title: "Onion and Paneer Pizza", image: "Pizza5", price: 699, discription: "The Terrace Cafe"),
    CategoryItem(title: "Margherita Pizza", image: "Pizza6", price: 649, discription: "Secret Oven Pizza")
]

// Category 3: Sandwiches category
var sandwichItem: [CategoryItem] = [
    CategoryItem(title: "Vegetable & Cheese Sandwich", image: "Sandwich1", price: 269, discription: "Spice N Nice"),
    CategoryItem(title: "Traditional Paneer Tikka Sandwich", image: "Sandwich2", price: 349, discription: "Banke Bihari Foods"),
    CategoryItem(title: "Cheese Sandwich", image: "Sandwich3", price: 245, discription: "Nashta Buffet"),
    CategoryItem(title: "Veg Sandwich", image: "Sandwich4", price: 85, discription: "Angithi Da Resto"),
    CategoryItem(title: "Veg Club Sandwich", image: "Sandwich5", price: 599, discription: "Green Leaf Cafe"),
    CategoryItem(title: "Afghani Sandwich", image: "Sandwich6", price: 349, discription: "Chill Cafe")
]

// Category 4: Cakes category
var cakeItem: [CategoryItem] = [
    CategoryItem(title: "Dutch Truffle Cake", image: "Cake1", price: 849, discription: "Maharaja Bakers"),
    CategoryItem(title: "Butterscotch Crunch Cake", image: "Cake2", price: 999, discription: "Good Morning Bakers"),
    CategoryItem(title: "Butterscotch Cake", image: "Cake3", price: 965, discription: "Cake Hub"),
    CategoryItem(title: "Chocolate Chips Cake", image: "Cake4", price: 1049, discription: "My Cake"),
    CategoryItem(title: "Oreo Royal Cake", image: "Cake5", price: 699, discription: "Brown Hut"),
    CategoryItem(title: "Red Velvet Cake", image: "Cake6", price: 949, discription: "Cake Delights")
]

// Category 5: Biryani category
var biryaniItem: [CategoryItem] = [
    CategoryItem(title: "Chaap Biryani", image: "Biryani1", price: 600, discription: "Delhi 6 Zaika"),
    CategoryItem(title: "Special Paneer Biryani ", image: "Biryani2", price: 749, discription: "Gaggan's Grill"),
    CategoryItem(title: "Soya Chaap Yummy Biryani", image: "Biryani3", price: 895, discription: "Jai Durge Bhojnalaya"),
    CategoryItem(title: "Paneer Tikka Yummy Biryani", image: "Biryani4", price: 465, discription: "Mitra Di Chaapi"),
    CategoryItem(title: "Chaap Biryani", image: "Biryani5", price: 549, discription: "Spice N Nice"),
    CategoryItem(title: "Veg Biryani", image: "Biryani6", price: 965, discription: "Angithi Da Resto")
]

// Recommended category
var recommendItems = [
    CategoryItem(title: "King Burger", image: "Burger1", price: 249, discription: "Urban Foodies"),
    CategoryItem(title: "Paneer Pizza", image: "Pizza1", price: 345, discription: "Pizza Hut"),
    CategoryItem(title: "Cheese Sandwich", image: "Sandwich1", price: 269, discription: "Spice N Nice"),
    CategoryItem(title: "Truffle Cake", image: "Cake1", price: 455, discription: "Maharaja Bakers"),
    CategoryItem(title: "Chaap Biryani", image: "Biryani1", price: 465, discription: "Delhi 6 Zaika")
]
