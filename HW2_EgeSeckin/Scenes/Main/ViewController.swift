//
//  ViewController.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 27.09.2021.
//

import UIKit

typealias BooleanCompletionBlock = (Bool) -> Void

class ViewController: UIViewController {
    
    private var actionButton: ActionButton!
    private var actionModule: ActionModuleVartical!

    // let permissionViewController = PermissionViewController()
    // present(permissionViewController, animated = true){
    //      print("PermissionViewController is presented!")
    // }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addActionButton()
        addActionModule()
        setupActionModuleData()
    }
    
    private func addActionButton(){
        actionButton = ActionButton()
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(actionButton)
        
        NSLayoutConstraint.activate ([
            actionButton.heightAnchor.constraint(equalToConstant: 0),
            actionButton.widthAnchor.constraint(equalToConstant: 50),
            
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),

        ])
    }
    
    private func addActionModule(){
        actionModule = ActionModuleVartical()
        actionModule.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(actionModule)
        NSLayoutConstraint.activate([
            actionModule.centerXAnchor .constraint(equalTo: view.centerXAnchor),
            actionModule.centerYAnchor.constraint(equalTo: view.centerYAnchor),

        ])
        
    }
    private func setupActionModuleData(){
        let camera = ActionButtonData(text: "Camera", buttonType: .filled(.smooth)).setActionButtonListener{
            self.present(PermissionViewBuilder.build(with: .camera), animated: true, completion: nil)
        }
        let photos = ActionButtonData(text: "Photos", buttonType: .filled(.bright)).setActionButtonListener {
            self.present(PermissionViewBuilder.build(with: .photos), animated: true, completion: nil)
        }
        actionModule.setData(by: ActionModuleData(negativeButtonData: camera, positiveButtonData: photos))
    }
}

   
