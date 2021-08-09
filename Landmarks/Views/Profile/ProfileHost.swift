//
//  ProfileHost.swift
//  Landmarks
//
//  Created by ahmed on 08/08/2021.
//

import SwiftUI

struct ProfileHost: View {
    @State private var profile = Profile.default
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack{
                if editMode?.wrappedValue == .active {
                    Button("Cancel"){
                        profile = modelData.profile
                        editMode?.wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            }else{
                ProfileEditor(profile: $profile)
                    .onAppear(perform: {
                        profile = modelData.profile
                    })
                    .onDisappear(perform: {
                        modelData.profile = profile
                    })
            }
            
        }
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
