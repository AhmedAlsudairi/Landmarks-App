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
                ForEach(modelData.categories.keys.sorted(), id: \.self){
                    category in
                    Text(category)
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
