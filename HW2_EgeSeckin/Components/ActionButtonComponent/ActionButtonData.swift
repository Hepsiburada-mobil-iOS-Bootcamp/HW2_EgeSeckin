//
//  ActionButtonData.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 27.09.2021.
//

import Foundation
import UIKit


class ActionButtonData {
    
    private(set) var text: String
    private(set) var buttonType: ActionButtonType
    
    init(text: String, buttonType: ActionButtonType) {
        self.text = text
        self.buttonType = buttonType
    }
}
