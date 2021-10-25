//
//  ContentView.swift
//  InstagramStory
//
//  Created by Farendza Muda on 25/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LoadingRectangle(progress: <#CGFloat#>)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoadingRectangle: View {
    var progress : CGFloat
    
    var body: some View{
        GeometryReader { geometry in
            ZStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(Color.white.opacity(0.3))
                    .cornerRadius(5)
                Rectangle()
                    .frame(width: geometry.size.width * self.progress , height: nil, alignment: .leading)
                    .foregroundColor(Color.white.opacity(0.9))
                    .cornerRadius(5)
            }
        }
    }
}
