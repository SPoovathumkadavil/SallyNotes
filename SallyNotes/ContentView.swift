//
//  ContentView.swift
//  SallyNotes
//
//  Created by Saaleh Poovathumkadavil on 8/20/23.
//

import SwiftUI

struct ColorDetail: View {
    var color: Color

    var body: some View {
        color.navigationTitle(color.description).ignoresSafeArea()
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
                .opacity(0.0)
                .frame(width: .infinity, height: .infinity)
            
            
        }
        .background(VisualEffect().ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
