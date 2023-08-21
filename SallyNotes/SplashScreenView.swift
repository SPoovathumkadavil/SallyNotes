//
//  SplashScreenView.swift
//  SallyNotes
//
//  Created by Saaleh Poovathumkadavil on 8/20/23.
//

import SwiftUI

struct VisualEffect: NSViewRepresentable {
    func updateNSView(_ nsView: NSView, context: Context) {
        
        nsView.window?.isOpaque = false
        nsView.window?.hasShadow = false
    }
    
   func makeNSView(context: Self.Context) -> NSView { return NSVisualEffectView() }
}

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if (isActive) {
            ContentView()
                .background(VisualEffect().ignoresSafeArea())
        } else {
            ZStack {
                Color(.black)
                    .opacity(0.0)
                    .ignoresSafeArea()
                    .frame(width: .infinity, height: .infinity)
                VStack {
                    HStack {
                        Image("iconpng")
                            .resizable()
                            .frame(width: 200, height: 200)
                        VStack(alignment: .leading){
                            Text("Sally Notes")
                                .font(.custom("Cattie", size: 50))
                            Text("A Delightful Notetaking App")
                                .font(.custom("AmericanTypewriter", size: 24))
                        }
                    }
                    .padding(.bottom)
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear() {
                        withAnimation(.easeIn(duration: 0.9)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
            }
            .background(VisualEffect().ignoresSafeArea())
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation() {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
