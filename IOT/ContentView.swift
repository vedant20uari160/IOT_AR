//
//  ContentView.swift
//  IOT
//
//  Created by vedant dhanyamraju on 08/12/23.
//

import SwiftUI
import RealityKit
        
struct ContentView: View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}
struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> some ARView {
        let arView = ARView(frame: .zero)
        
        let Desk = try! MyScene.loadBox()
        
        arView.scene.anchors.append(Desk)
        return arView
    }
        // Add the experience to the ARView
        //arView.scene.anchors.append(deskExperience)
    func updateUIView(_ uiview:UIViewType,context:Context){
    }
}
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
