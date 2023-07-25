//
//  CategoryView.swift
//  Restaurant Menu Display
//
//  Created by Harsh Rajput on 21/07/23.
//

import SwiftUI

// Define a SwiftUI View called "CategoryView" that represents the categories section
struct CategoryView: View {
    var body: some View {
        // Title for the categories section
        Text("Categories")
            .font(.title2)
            .fontWeight(.bold)
            .padding(.horizontal)
        
        // Scrollable content using ScrollView
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                // Loop through the list of categories and display each as a NavigationLink
                ForEach(categories, id: \.id) { category in
                    
                    // NavigationLink to navigate to the "ItemsView" for the selected category
                    NavigationLink {
                        ItemsView(category: category) // Placeholder view for the "ItemsView" (actual content may vary)
                    } label: {
                        // Horizontal stack for each category item
                        HStack {
                            // Image representing the category
                            Image(category.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                                .padding(5)
                                .background(.black)
                                .clipShape(Circle())
                            
                            // Title of the category
                            Text(category.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding(.vertical, 10) // Add vertical padding to the category item
                        .padding(.horizontal, 12) // Add horizontal padding to the category item
                        .background(.gray.opacity(0.2)) // Set the background color for the category item
                        .clipShape(Capsule()) // Clip the category item in a capsule shape
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5) // Add a subtle shadow effect
                    }
                }
            }
            .padding(.horizontal) // Add horizontal padding to the entire content
        }
    }
}

// PreviewProvider for CategoryView
struct CategoryView_Previews: PreviewProvider {
    @State var selectedCategary: CategoryModel = categories.first!
    static var previews: some View {
        Home() // Placeholder view for the "Home" view (actual content may vary)
    }
}
