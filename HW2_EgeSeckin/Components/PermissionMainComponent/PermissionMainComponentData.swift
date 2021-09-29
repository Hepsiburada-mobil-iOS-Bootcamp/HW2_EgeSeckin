//
//  PermissionMainComponentData.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 29.09.2021.
//

import UIKit

class PermissionMainComponentData{
    private(set) var image: UIImage
    private(set) var labelPackData: LabelPackComponentData
    private(set) var actionModuleData: ActionModuleData
    
    init(image: UIImage,
         labelPackData: LabelPackComponentData,
         actionModuleData: ActionModuleData) {
        self.image = image
        self.labelPackData = labelPackData
        self.actionModuleData = actionModuleData
    }
}
