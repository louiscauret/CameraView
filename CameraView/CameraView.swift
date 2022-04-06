//
//  ContentView.swift
//  CameraView
//
//  Created by Louis Cauret on 06/04/2022.
//

import SwiftUI
import CoreData

struct CameraView: View {
    @ObservedObject private var cameraModel = CameraViewModel()
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        
        VStack {
            
            image?.resizable().scaleEffect()
            
            Button("Open Photo"){
                self.showImagePicker = true
            }
        .padding()
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    
        }.sheet(isPresented: self.$showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}
struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
