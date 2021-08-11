//
//  UIImageView + Extension.swift
//  IChat
//
//  Created by Ilya on 10.08.2021.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
    
    
}
