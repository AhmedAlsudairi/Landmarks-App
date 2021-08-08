//
//  CategoryHome.swift
//  Landmarks
//
//  Created by ahmed on 08/08/2021.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self){
                    category in
                    CategoryRow(categoryName: category, items: modelData.categories[category]!)
                }
            }
                .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
