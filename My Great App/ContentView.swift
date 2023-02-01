//
//  ContentView.swift
//  My Great App
//
//  Created by Stewart Lynch on 2021-09-21.
//

import SwiftUI
import FBAuthentication

// Film Firebase Authentication SwiftUI Package 12:40: https://youtu.be/tKBguB5c5ic?list=PLBn01m5Vbs4B79bOmI3FL_MFxjXVuDrma&t=760

struct ContentView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
        LoadingView(startView: HomeView(),
        title: "CreaTECH Login",
        primaryColor: UIColor(named: "primaryColor")!,
        secondaryColor: UIColor(named: "secondaryColor")!,
        logoImage: Image("CTLogo"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserInfo())
    }
}
