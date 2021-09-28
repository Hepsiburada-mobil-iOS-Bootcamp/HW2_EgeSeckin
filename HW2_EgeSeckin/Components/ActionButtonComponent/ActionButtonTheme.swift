//
//  ActionButtonTheme.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 28.09.2021.
//

import UIKit

enum ActionButtonTheme: GenericValueProtocol{
    
    typealias Value = UIColor
    
    var value: UIColor{
        switch self {
        case .smooth:
            return #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        case .bright:
            return #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        case .negativeAction:
            return #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }
    }
    
    case smooth
    case negativeAction
    case bright
}
