//
//  PermissionManagerProtocol.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 30.09.2021.
//

import Foundation

enum PermissionType {
    case camera
    case photos
}

protocol PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock)
    
    func getPermissionMainViewData() -> PermissionMainViewData
}
