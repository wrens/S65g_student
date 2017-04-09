//
//  PlusView.swift
//  Lecture3
//
//  Created by Jp LaFond on 4/8/17.
//  Copyright © 2017 Jp LaFond. All rights reserved.
//

import UIKit

@IBDesignable
class PlusView: UIView {

    @IBInspectable var lineColor: UIColor = UIColor.darkGray
    @IBInspectable var lineWidth: CGFloat = 1
    @IBInspectable var edgeColor: UIColor = UIColor.lightGray
    @IBInspectable var edgeWidth: CGFloat = 1
    @IBInspectable var cornerRadius: CGFloat = 10

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code

        // Define the edge path
        let edgePath = UIBezierPath()

        // Define how the edges will be drawn
        edgePath.lineWidth = edgeWidth
        // Draw the lines for the outline/edges
        edgePath.move(to: rect.origin)
        edgePath.addLine(to: CGPoint(x: rect.origin.x,
                                     y: rect.size.height))
        edgePath.addLine(to: CGPoint(x: rect.size.width,
                                     y: rect.size.height))
        edgePath.addLine(to: CGPoint(x: rect.size.width,
                                     y: rect.origin.y))
        edgePath.addLine(to: CGPoint(x: rect.origin.x,
                                     y: rect.origin.y))
        // Define the color
        edgeColor.setStroke()
        // Draw them
        edgePath.stroke()

        // Define the plus line path
        let linePath = UIBezierPath()

        // Define how the plus will be drawn in the center
        linePath.lineWidth = lineWidth

        // Calculate the center of the view
        let centerPoint = CGPoint(x: rect.midX,
                                  y: rect.midY)
        // Move to the center top
        linePath.move(to: CGPoint(x: centerPoint.x,
                                  y: rect.origin.y))
        // Add the line from the top to the bottom
        linePath.addLine(to: CGPoint(x: centerPoint.x,
                                     y: rect.size.height))

        // Move the center left
        linePath.move(to: CGPoint(x: rect.origin.x,
                                  y: centerPoint.y))

        // Add the line from the left to the right
        linePath.addLine(to: CGPoint(x: rect.size.width,
                                     y: centerPoint.y))
        // Define the color
        lineColor.setStroke()
        // Actually draw them
        linePath.stroke()

        // Tweak the corners
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = true
    }

    override func touchesEnded(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        print("\(#function) touches <\(touches)> event <\(event)>")
    }

}
