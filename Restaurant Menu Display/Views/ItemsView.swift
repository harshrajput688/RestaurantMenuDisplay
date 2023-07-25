//
//  ItemsView.swift
//  Restaurant Menu Display
//
//  Created by Harsh Rajput on 23/07/23.
//

import SwiftUI

// Define a SwiftUI View called "ItemsView" that displays a list of items for a specific category
struct ItemsView: View {
    var category: CategoryModel // The category for which items are being displayed
    
    var body: some View {
        // Scrollable content using ScrollView
        ScrollView(.vertical, showsIndicators: false) {
            // Display the title of the category
            Text(category.title)
                .fontWeight(.bold)
            
            // Loop through the items in the category and display each item
            ForEach(category.items, id: \.id) { item in
                VStack(alignment: .leading) {
                    // Display the title of the item
                    Text(item.title)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    // Horizontal stack to display item details and an image
                    HStack(spacing: 20) {
                        VStack(alignment: .leading, spacing: 15) {
                            // Display a badge for "Bestseller"
                            HStack {
                                Image("vegIcon") // Placeholder image for the badge
                                
                                Text("Bestseller") // Placeholder text for the badge (actual content may vary)
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal)
                                    .background(.yellow) // Set the background color for the badge
                                    .cornerRadius(10) // Round the corners of the badge
                            }
                            
                            // Display the description of the item
                            Text(item.discription)
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            // Display the price of the item
                            (
                                Text("Rs ") // Text prefix for the price
                                    .font(.footnote)
                                    .foregroundColor(.pink) // Set the text color to pink
                                +
                                Text("\(item.price)") // Placeholder text for the price (actual price may vary)
                            )
                            .fontWeight(.semibold)
                        }
                        
                        // ZStack to display the item image and an "Add" button
                        ZStack {
                            Image(item.image) // Display the item image
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 20)) // Clip the image in a rounded rectangle shape
                            
                            RoundedRectangle(cornerRadius: 10) // Rounded rectangle for the "Add" button background
                                .stroke(Color.pink.opacity(0.6), lineWidth: 3) // Set the border color and width
                                .foregroundColor(.white.opacity(0.9)) // Set the background color for the rounded rectangle
                                .frame(width: 30, height: 30) // Set the size of the rounded rectangle
                                .padding(.top, 150) // Add padding to position the rounded rectangle
                                .overlay(
                                    // Button to add the item to the cart (placeholder action)
                                    Button(action: {
                                        // Placeholder action for adding the item to the cart (actual action may vary)
                                    }, label: {
                                        HStack {
                                            Image(systemName: "plus") // Icon for the "Add" button
                                        }
                                        .font(.title2) // Set the font and size for the icon
                                        .fontWeight(.bold) // Set the font weight to bold
                                        .foregroundColor(.pink.opacity(0.8)) // Set the text color to pink
                                        .padding(.top, 150) // Add padding to position the "Add" button
                                    })
                                    
                                )
                        }
                    }
                }
                .padding() // Add padding around the item content
                .background(.white) // Set the background color for the item
                .cornerRadius(10) // Round the corners of the item
                .padding(.vertical, 5) // Add vertical padding between items
                .padding(.horizontal) // Add horizontal padding around the item
            }
        }
        .background(Color.black.opacity(0.03).ignoresSafeArea()) // Set the background color for the view
    }
}

// PreviewProvider for ItemsView
struct ItemsView_Previews: PreviewProvider {
    static var previews: some View {
        Home() // Placeholder view for the "Home" view (actual content may vary)
    }
}
