//
//  TextFielIcon.swift
//  CMillonario
//
//  Created by DESAPP-1 on 28/12/16.
//  Copyright © 2016 Usuario Lisyx. All rights reserved.
//

import UIKit

class IconoTextField: UITextField {
    
    //@IBInspectable var inset: CGFloat = 0
    @IBInspectable var estiloLinea: Bool = false
    
    
    @IBInspectable var leftImage: UIImage = UIImage(){
        didSet{
            //leftViewMode = UITextFieldViewMode.always
            //leftView = UIImageView(image:leftImage)
            let leftView = UIView()
            leftView.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
            
            let leftImageView = UIImageView()
            leftImageView.image = leftImage
            leftImageView.contentMode = .scaleAspectFit
            leftImageView.frame = CGRect(x: 8, y: 8, width: 14, height: 14)
           
            leftView.addSubview(leftImageView)
            
            self.leftViewMode = .always
            self.leftView = leftView
          
            self.font = UIFont(name: "Radikal-Light", size: 14)
        }
    }
    
    @IBInspectable var colorLineaBottom: UIColor  {
        get {
            return UIColor.white
        }
        set {
            if !estiloLinea == true {
                self.borderStyle = UITextBorderStyle.none
                self.backgroundColor = UIColor.clear
                let width = 1.0
                
                let borderLine = UIView()
                borderLine.frame = CGRect(x: 3, y: Double(self.frame.height) - width, width: Double(self.frame.width)-6, height: width)
                
                borderLine.backgroundColor = newValue
                self.addSubview(borderLine)
            }
        }
    }
    
    
  /*  override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: inset, dy: inset)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x:5, y:5, width:25, height:25).insetBy(dx: 10, dy: 10) //Change frame according to your needs
    }*/
}
