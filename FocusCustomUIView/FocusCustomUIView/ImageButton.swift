//
//  ImageButton.swift
//  FocusCustomUIView
//
//  Created by Chris Mendez on 4/15/16.
//  Copyright © 2016 Chris Mendez. All rights reserved.
//

import UIKit

class ImageButton: UIButton {
        
        override func awakeFromNib()
        {
            super.awakeFromNib()
            contentMode = UIViewContentMode.ScaleAspectFit
            contentHorizontalAlignment = .Fill
            contentVerticalAlignment   = .Fill
        }
        
        override func layoutSubviews()
        {
            imageView?.adjustsImageWhenAncestorFocused = true
            imageView?.clipsToBounds = false
            super.layoutSubviews()
        }
        
        override func canBecomeFocused() -> Bool
        {
            return enabled && super.canBecomeFocused()
        }

}
