//
//  PermissionViewController.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 29.09.2021.
//

import UIKit

class PermissionViewController: UIViewController {

    
    private var permissionMainView: PermissionMainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addPermissionMainView()
    }

    private func addPermissionMainView() {
        permissionMainView = PermissionMainView(data: getPermissionViewData())
        permissionMainView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(permissionMainView)
        
        NSLayoutConstraint.activate([
            permissionMainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            permissionMainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            permissionMainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

        ])
    }
    private func getPermissionViewData() -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.camera.value, labelPackData: LabelPackComponentData(title: "Camera Permisson", subTitle: "Would you please give permission to access your camera."), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: "Not Now", buttonType: .outlined(.smooth)), positiveButtonData: ActionButtonData(text: "OK", buttonType: .filled(.smooth))))
    }
}
