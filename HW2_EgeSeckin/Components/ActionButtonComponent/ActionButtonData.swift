//
//  ActionButtonData.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 27.09.2021.
//

import Foundation
import UIKit

typealias VoidCompletionBlock = () -> Void

class ActionButtonData {
    
    private(set) var text: String
    private(set) var buttonType: ActionButtonType
    private(set) var actionButtonListener: VoidCompletionBlock?
    
    init(text: String, buttonType: ActionButtonType) {
        self.text = text
        self.buttonType = buttonType
    }
    
    func setActionButtonListener(by value: VoidCompletionBlock?) -> Self {
        actionButtonListener = value
        return self
    }
}
