//
//  PhotosPermissionManager.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 30.09.2021.
//

import Foundation

class PhotosPermissionManager: PermissionManagerProtocol {
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print("request permission")
    }
    func getPermissionMainViewData() -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.photos.value, labelPackData: LabelPackComponentData(title: "Photos Permisson", subTitle: "Would you please give permission to access your photos."), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: "Not Now", buttonType: .outlined(.bright)), positiveButtonData: ActionButtonData(text: "OK", buttonType: .filled(.bright))))
    }
}
