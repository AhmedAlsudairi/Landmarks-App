//
//  ProfileHost.swift
//  Landmarks
//
//  Created by ahmed on 08/08/2021.
//

import SwiftUI

struct ProfileHost: View {
    @State private var profile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: profile)
        }
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
