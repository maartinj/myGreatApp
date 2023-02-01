//
//  HomeView.swift
//  My Great App
//
//  Created by Marcin Jędrzejak on 30/01/2023.
//

import SwiftUI
import FBAuthentication

struct HomeView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    @State private var showProfile = false
    
    var body: some View {
        VStack {
            Text("Logged in as \(userInfo.user.name)")
            Button {
                FBAuth.logout { result in
                    switch result {
                    case .success(_):
                        print("Logged Out")
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            } label: {
                Text("Log Out")
            }
            Button {
                showProfile.toggle()
            } label: {
                Text("Show Profile")
            }
            .sheet(isPresented: $showProfile) {
                ProfileView(primaryColor: UIColor(named: "primaryColor")!)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(UserInfo())
    }
}
