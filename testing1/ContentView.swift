//
//  ContentView.swift
//  testing1
//
//  Created by seseadmin on 4/20/22.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @State private var isControlsVisible: Bool = true
    @State private var showBrowse: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
        
            ARViewContainer()
                
            ControlView(isControlsVisible: $isControlsVisible, showBrowse: $showBrowse)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
