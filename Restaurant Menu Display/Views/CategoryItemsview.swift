//
//  CategoryItemsview.swift
//  Restaurant Menu Display
//
//  Created by Harsh Rajput on 21/07/23.
//

import SwiftUI

struct CategoryItemsview : View{
    var categary: CategoryModel
    var body: some View {
        Text(categary.title)
    }
}

struct CategoryItemsview_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
