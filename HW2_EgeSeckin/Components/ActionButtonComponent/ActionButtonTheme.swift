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
            return #colorLiteral(red: 1, green: 0.5219360257, blue: 0.1294504506, alpha: 1)
        case .bright:
            return #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        case .negativeAction:
            return #colorLiteral(red: 1, green: 0.5219360257, blue: 0.1294504506, alpha: 1)
        }
    }
    
    case smooth
    case negativeAction
    case bright
}
