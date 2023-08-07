//
//  LockwoodYotiBridge.swift
//  Sample
//
//  Created by Callum Abele on 02/08/2023.
//  Copyright © 2023 Yoti Ltd. All rights reserved.
//

import UIKit

public class LockwoodYotiBridge
{
    public static weak var delegate:LockwoodYotiDelegate?
    
    private static var cameraViewController:CameraViewController?
    
    public static func Show(presentingViewController:UIViewController, delegate:LockwoodYotiDelegate)
    {
        self.delegate = delegate
        
        self.cameraViewController = CameraViewController()
        
        if let view = self.cameraViewController?.view {
            
            presentingViewController.view.addSubview(view)
        }
        
    }
    
    
    public static func Hide()
    {
        self.cameraViewController?.view.removeFromSuperview()
    }
}
