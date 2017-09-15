//
//  LoginView_pepsico.swift
//  LiferayScreensThemePepsico
//
//  Created by MacBook Pro on 14/09/17.
//  Copyright © 2017 lisyx. All rights reserved.
//

import UIKit
import LiferayScreens


@IBDesignable public class  LoginView_pepsico: LoginView_default {

    override public func onCreated() {
    
    }
    
    override public func createProgressPresenter() -> ProgressPresenter {
                
        return super.createProgressPresenter()
    }
    
    override public func onShow() {
       
    }
    
    override public func onHide() {
      
    }
    
    public override func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    
}
