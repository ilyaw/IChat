//
//  Label + Extension.swift
//  IChat
//
//  Created by Ilya on 10.08.2021.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
    
}
