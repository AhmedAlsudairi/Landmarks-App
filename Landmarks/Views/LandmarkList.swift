//
//  LandmarkList.swift
//  Landmarks
//
//  Created by ahmed on 07/08/2021.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly: Bool = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter{
            landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView{
        List(filteredLandmarks){
            landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()

    }
}
