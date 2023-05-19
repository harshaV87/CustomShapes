//
//  ContentView.swift
//  CustomShapes
//
//  Created by Venkata harsha Balla on 5/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ArcSample().stroke(lineWidth: 3).frame(width: 300, height: 300, alignment: .center)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ArcSample: Shape {
    func path(in rect: CGRect) -> Path {
        Path {
            path in
            path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.maxY), radius: rect.height/2, startAngle: Angle(degrees: 45), endAngle: Angle(degrees: 180), clockwise: false, transform: CGAffineTransform(rotationAngle: 40))
            
            // we can also add a line and include an arc and make all kinds of shapes
            // we can add quad curve as well , so the way we can do it is as follows
            // always start from move to point
            path.move(to: CGPoint(x: 0, y: 0))
            path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.midY))
        }
    }
    
    // now we have a path here
    
}
