//
//  TabbedView.swift
//  SallyNotes
//
//  Created by Saaleh Poovathumkadavil on 8/20/23.
//

import SwiftUI

struct TabbedView: View {

    @State private var selectedTab: Int = 0

    var body: some View {
        VStack {
            Picker("", selection: $selectedTab) {
                Text("First").tag(0)
                Text("Second").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())

            switch(selectedTab) {
                case 0: SplashScreenView()
                case 1: ContentView()
            default:
                SplashScreenView()
            }
        }
    }
}


struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
