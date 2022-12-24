//
//  ContentView.swift
//  3D Rotation Visualizer
//
//  Created by Dhruv Jaiswal on 24/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var x: CGFloat = 0
    @State var y: CGFloat = 0
    @State var z: CGFloat = 0
    @State var degress: Double = 0
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                Text("3D Rotation Visualiser")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .frame(height: 50)
            VStack {
                Spacer()
                Rectangle()
                    .fill(LinearGradient(gradient: .init(colors: [Color.orange, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 300, height: 200)
                    .rotation3DEffect(.degrees(degress), axis: (x: x, y: y, z: z))
                Spacer()
            }
            .padding(.top, 30)
            VStack(alignment: .center) {
                Text("degress \(degress)")
                Slider(value: $degress, in: 0 ... 360)
                HStack(alignment: .center) {
                    Text("X \(x)")
                    Stepper("", value: $x, in: 0 ... 1)
                }.padding()
                HStack(alignment: .center) {
                    Text("Y \(y)")
                    Stepper("", value: $y, in: 0 ... 1)
                }.padding()
                HStack(alignment: .center) {
                    Text("Z \(z)")
                    Stepper("", value: $z, in: 0 ... 1)
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
