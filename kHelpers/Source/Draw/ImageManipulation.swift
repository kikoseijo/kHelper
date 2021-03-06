//
//  ImageManipulation.swift
//  kHelpers
//
//  Created by sMac on 26/01/2017.
//  Copyright © 2017 Sunnyface.com. All rights reserved.
//

import Foundation
import CoreImage
import CoreGraphics


public func maskRounded(image: UIImage, withRadius radius: Float) -> UIImage {
    let imageView: UIImageView = UIImageView(image: image)
    var layer: CALayer = CALayer()
    layer = imageView.layer
    
    layer.masksToBounds = true
    layer.cornerRadius = CGFloat(radius)
    
    UIGraphicsBeginImageContext(imageView.bounds.size)
    layer.render(in: UIGraphicsGetCurrentContext()!)
    let roundedImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return roundedImage!
}

public extension CGSize {
    
    func resizeFill(toSize: CGSize) -> CGSize {
        
        let scale : CGFloat = (self.height / self.width) < (toSize.height / toSize.width) ? (self.height / toSize.height) : (self.width / toSize.width)
        return CGSize(width: (self.width / scale), height: (self.height / scale))
        
    }
}

public extension UIImage {
    
    func scale(toSize newSize:CGSize) -> UIImage {
        
        // make sure the new size has the correct aspect ratio
        let aspectFill = self.size.resizeFill(toSize: newSize)
        
        UIGraphicsBeginImageContextWithOptions(aspectFill, false, 0.0);
        self.draw(in: CGRect(origin: CGPoint(x:0, y:0), size: CGSize(width:aspectFill.width, height:aspectFill.height)))
        let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
}

public class RoundedImageView: UIImageView {
    
    /// saved rendition of border layer
    
    weak var borderLayer: CAShapeLayer?
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        // create path
        
        let width = min(bounds.width, bounds.height)
        let path = UIBezierPath(arcCenter: CGPoint(x:bounds.midX, y:bounds.midY), radius: width / 2, startAngle: CGFloat(0.0), endAngle: CGFloat(M_PI * 2.0), clockwise: true)
        
        // update mask and save for future reference
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
        
        // create border layer
        
        let frameLayer = CAShapeLayer()
        frameLayer.path = path.cgPath
        frameLayer.lineWidth = 32.0
        frameLayer.strokeColor = UIColor.black.cgColor
        frameLayer.fillColor = nil
        
        // if we had previous border remove it, add new one, and save reference to new one
        
        self.borderLayer?.removeFromSuperlayer()
        layer.addSublayer(frameLayer)
        self.borderLayer = frameLayer
    }
    
}
