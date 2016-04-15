//
//  Button.swift
//  FocusCustomUIView
//
//  Created by Chris Mendez on 4/15/16.
//  Copyright © 2016 Chris Mendez. All rights reserved.
//

import UIKit

class Button: UIView {

    override func canBecomeFocused() -> Bool {
        return true
    }
    
    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        if context.previouslyFocusedView === self {
            UIView.animateWithDuration(0.1, animations: { 
                context.previouslyFocusedView?.transform = CGAffineTransformMakeScale(1.0, 1.0)
            })
        }
        
        if context.nextFocusedView === self {
            UIView.animateWithDuration(0.1, animations: { 
                context.nextFocusedView?.transform = CGAffineTransformMakeScale(1.2, 1.2)
            })
        }
    }
}
