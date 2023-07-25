import SwiftUI

// Define a SwiftUI View called "Home" that represents the main home screen
struct Home: View {
    // State variables to track the selected category and the state of the side menu
    @State var selectedCategary: CategoryModel = categories.first!
    @State var show: Bool = false
    
    var body: some View {
        // Main container using a ZStack to layer the content
        ZStack {
            // GeometryReader to adapt the content to the available space
            GeometryReader { _ in
                VStack {
                    HStack {
                        // Button for showing/hiding the side menu
                        Button {
                            withAnimation(.default) {
                                self.show.toggle()
                            }
                        } label: {
                            Image(systemName: "circle.grid.2x2")
                                .font(.title2)
                                .padding(10)
                                .background(.pink.opacity(0.1))
                                .foregroundColor(.pink)
                                .cornerRadius(10)
                        }
                        
                        Spacer()
                        
                        // NavigationLink for navigating to the "Orders" page
                        NavigationLink {
                            Text("Orders") // Placeholder text for the "Orders" page (actual content may vary)
                        } label: {
                            Image(systemName: "bag")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .padding(10)
                                .background(.black.opacity(0.08))
                                .cornerRadius(10)
                        }
                    }
                    .overlay(
                        // Overlay with an image and text as the title
                        HStack {
                            Image("FoodBowl")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 58, height: 58)
                            
                            Text("Food!")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                    )
                    .padding(.horizontal)
                    
                    // Scrollable content using ScrollView
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 10) {
                            // TopView displays some content on top of the screen
                            TopView()
                            
                            // CategoryView displays categories of food items
                            CategoryView()
                            
                            // Recommendations View
                            HStack {
                                Text("Recommendations")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                // NavigationLink for navigating to the "ViewAll" page for recommendations
                                NavigationLink {
                                    ItemsView(category: recommendCategory) // Placeholder text for the "ViewAll" page (actual content may vary)
                                } label: {
                                    HStack(spacing: 6) {
                                        Text("View All")
                                            .foregroundColor(.pink)
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                        
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                            .padding(.vertical, 4)
                                            .padding(.horizontal, 6)
                                            .background(.pink)
                                            .cornerRadius(5)
                                    }
                                }
                            }
                            .padding()
                            
                            // Horizontal ScrollView for displaying recommended food items
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 25) {
                                    // Loop through the recommended items and display each in the "PopularItemRowView"
                                    ForEach(recommendItems, id: \.id) { item in
                                        PopularItemRowView(item: item)
                                    }
                                }
                                .padding(.horizontal)
                            }
                        }
                    }
                }
                .background(Color.black.opacity(0.03).ignoresSafeArea())
            }
            
            // Side menu view (MenuView) that slides in and out when the button is pressed
            HStack {
                MenuView(show: $show) // Placeholder view for the side menu (actual content may vary)
                    .preferredColorScheme(.light)
                    .offset(x: self.show ? 0 : -UIScreen.main.bounds.width / 1.5)
                
                Spacer(minLength: 0)
            }
        }
    }
}

// PreviewProvider for Home View
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

// Extension to get the device's screen bounds
extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
