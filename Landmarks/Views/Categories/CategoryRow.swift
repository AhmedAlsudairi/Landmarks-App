//
//  CategoryRow.swift
//  Landmarks
//
//  Created by ahmed on 08/08/2021.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    var body: some View {
        
        VStack {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(items){
                        item in
                        CategoryItem(landmark: item)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(4)))
    }
}
