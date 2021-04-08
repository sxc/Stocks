//
//  Chart.swift
//  Stocks
//
//  Created by Xiaochun Shen on 2021/4/8.
//

import SwiftUI

struct Chart: View {
    var body: some View {

        Grid()
                  .stroke(lineWidth: 0.2)
    }
}

struct MySquare: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.size.width, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.width))
        path.addLine(to: CGPoint(x: 0, y: rect.size.width))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.closeSubpath()
        
        return path
    }
}


struct Grid: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.size.width*0.25, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width*0.25, y: rect.size.height))
        
        path.move(to: CGPoint(x: rect.size.width*0.5, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width*0.5, y: rect.size.height))
        
        path.move(to: CGPoint(x: rect.size.width*0.75, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width*0.75, y: rect.size.height))
        
        
        path.move(to: CGPoint(x: 0, y: rect.size.height*0.25))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height*0.25))
        
        path.move(to: CGPoint(x: 0, y:rect.size.height*0.5))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height*0.5))
        
        path.move(to: CGPoint(x: 0, y: rect.size.height*0.75))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height*0.75))
        
        return path
    }
}

struct Chart_Previews: PreviewProvider {
    static var previews: some View {
        Chart()
    }
}
