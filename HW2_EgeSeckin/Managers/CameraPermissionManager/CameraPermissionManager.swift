//
//  CameraPermissionManager.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 30.09.2021.
//

import Foundation

class CameraPermissionManager: PermissionManagerProtocol {
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print("request permission")
    }
    func getPermissionMainViewData() -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.camera.value, labelPackData: LabelPackComponentData(title: "Camera Permisson", subTitle: "Would you please give permission to access your camera."), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: "Not Now", buttonType: .outlined(.smooth)), positiveButtonData: ActionButtonData(text: "OK", buttonType: .filled(.smooth))))
    }
}
