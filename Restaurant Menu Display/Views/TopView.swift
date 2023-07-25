import SwiftUI

// Define a SwiftUI View called "TopView" that represents the top section of the screen
struct TopView: View {
    var body: some View {
        // Horizontal stack with spacing between views
        HStack(spacing: 20) {
            // Vertical stack to arrange views vertically
            VStack(alignment: .leading, spacing: 8) {
                // Concatenated text with different colors
                (
                    Text("Unleash Your Palate at ") // First part of the title in white color
                        .foregroundColor(.white)
                    +
                    Text("yummy") // Second part of the title in pink color
                        .foregroundColor(.pink)
                )
                .font(.title) // Set the font and size for the title
                .fontWeight(.bold) // Set the font weight to bold
                .frame(width: 200) // Limit the width of the title to 200 points
                
                // NavigationLink to navigate to the "Orders" page
                NavigationLink {
                    Text("Orders") // Placeholder text for the link (actual content may vary)
                } label: {
                    Text("Order Now") // Text for the link button
                        .font(.headline) // Set the font and size for the link button
                        .foregroundColor(.white) // Set the text color to white
                        .padding(.vertical, 10) // Add vertical padding to the button
                        .padding(.horizontal) // Add horizontal padding to the button
                        .background(.pink) // Set the background color of the button to pink
                        .clipShape(Capsule()) // Clip the button in a capsule shape
                        .padding() // Add additional padding around the button
                }
            }
            .padding(.leading) // Add padding to the leading edge of the vertical stack
            
            Spacer(minLength: 0) // Add a flexible spacer to push the content to the right
        }
        .padding() // Add padding to the horizontal stack
        .padding(.vertical, 40) // Add additional vertical padding
        .background(
            Image("FoodImageMain2") // Display the background image
                .resizable() // Allow the image to be resizable
                .scaledToFill() // Scale the image to fill the available space
                .frame(height: 250) // Set the height of the image to 250 points
                .cornerRadius(20) // Round the corners of the image with a radius of 20
                .padding(.horizontal) // Add padding around the image
        )
    }
}
