//
//  MenuView.swift
//  Restaurant Menu Display
//
//  Created by Harsh Rajput on 22/07/23.
//

import SwiftUI

// Define a SwiftUI View called "MenuView" that represents the side menu
struct MenuView: View {
    @Binding var show: Bool // Binding to track the state of the side menu
    
    var body: some View {
        VStack {
            HStack {
                // Button to close the side menu
                Button {
                    withAnimation(.default) {
                        self.show.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 12, height: 20)
                }
                Spacer()
                
                // Placeholder button (actual functionality may vary)
                Button {
                    // Placeholder action for the button (actual action may vary)
                } label: {
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                }

            }
            .padding(.top) // Add padding to the top of the HStack
            .padding(.bottom, 25) // Add padding to the bottom of the HStack
            
            // Placeholder image (actual image may vary)
            Image("myImage")
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle()) // Clip the image in a circle shape
            
            VStack(spacing: 12) {
                // Placeholder text for the name (actual name may vary)
                Text("Harsh")
                
                // Placeholder text for the designation (actual designation may vary)
                Text("iOS Developer")
                    .font(.caption)
            }
            .padding(.top, 25) // Add padding to the top of the VStack
            
            // NavigationLink to navigate to the "Orders" page
            NavigationLink {
                Text("Orders") // Placeholder text for the link (actual content may vary)
            } label: {
                HStack(spacing: 20) {
                    Image(systemName: "bag") // Icon for the link button
                        .font(.title) // Set the font and size for the icon
                    
                    Text("Order Now") // Text for the link button
                    Spacer() // Add a flexible spacer to push the content to the right

                }
            }
            .padding(.top, 25) // Add padding to the top of the link button
            
            Spacer() // Add a flexible spacer to push the content to the bottom
        }
        .foregroundColor(.primary) // Set the text color to the primary color
        .padding(.horizontal, 20) // Add horizontal padding to the entire content
        .frame(width: UIScreen.main.bounds.width/1.5) // Set the width of the side menu
        .background((Color(red: 1.0, green: 0.6092, blue: 0.70).opacity(1)).edgesIgnoringSafeArea(.all)) // Set the background color for the side menu
        .overlay(
            // Rectangle overlay to create a border around the side menu
            Rectangle()
                .stroke(Color.primary.opacity(0.3), lineWidth: 2) // Set the border color and width
                .shadow(radius: 3) // Add a subtle shadow effect to the border
                .edgesIgnoringSafeArea(.all) // Make sure the overlay covers the entire screen
        )
    }
}

// PreviewProvider for MenuView
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        // Placeholder view for the "Home" view (actual content may vary)
        Home()
    }
}
