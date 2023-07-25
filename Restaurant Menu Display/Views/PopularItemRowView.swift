//
//  PopularItemRowView.swift
//  Restaurant Menu Display
//
//  Created by Harsh Rajput on 20/07/23.
//

import SwiftUI

struct PopularItemRowView: View {
    var item: CategoryItem // Represents a single item of a specific category
    
    var body: some View {
        // Main container with vertical stacking and spacing of 8 between views
        VStack(spacing: 8) {
            // Flame icon on the top-right corner
            Image(systemName: "flame")
                .font(.footnote)
                .foregroundColor(.red)
                .padding(8)
                .background(.orange.opacity(0.1))
                .clipShape(Circle())
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(-10)
            
            // Image of the category item
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: getRect().width/2.5)
                .frame(height: getRect().height/6.5)
            
            // Title of the category item
            Text(item.title)
                .fontWeight(.bold)
            
            // Description of the category item
            Text(item.discription)
                .font(.footnote)
                .foregroundColor(.gray)
            
            // Price of the category item
            (
                Text("Rs ") // Text "Rs " with pink color and smaller font size
                    .font(.footnote)
                    .foregroundColor(.pink)
                +
                Text("\(item.price)") // Text with the price value and black color
                    .font(.title2)
                    .foregroundColor(.black)
            )
            .fontWeight(.bold)
            .padding(.top, 8)
        }
        .padding() // Adds padding to all sides of the VStack
        .background(.white) // Sets a white background for the entire view
        .cornerRadius(25) // Rounds the corners of the view with a radius of 25
        .shadow(color: .black.opacity(0.04), radius: 5, x: 5, y: 5) // Adds a subtle shadow effect
    }
}

struct PopularItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
