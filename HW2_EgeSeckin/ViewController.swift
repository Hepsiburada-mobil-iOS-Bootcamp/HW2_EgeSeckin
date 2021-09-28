//
//  ViewController.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 27.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var actionButton: ActionButton!
    private var actionButton2: ActionButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addActionButton()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.actionButton.setData(by: ActionButtonData(text: "OK", buttonType: .filled(.smooth)))
        }
        
    }

    private func addActionButton() {
        actionButton = ActionButton()
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(actionButton)
        
        NSLayoutConstraint.activate([
        
            actionButton.heightAnchor.constraint(equalToConstant: 50),
            actionButton.widthAnchor.constraint(equalToConstant: 120),
            
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        ])
        
        actionButton2 = ActionButton(frame: .zero, data: ActionButtonData(text: "OK", buttonType: .outlined(.smooth)))
        actionButton2.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(actionButton2)
        
        NSLayoutConstraint.activate([
        
            actionButton2.heightAnchor.constraint(equalToConstant: 50),
            actionButton2.widthAnchor.constraint(equalToConstant: 120),
            
            actionButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
        
        ])
    }

}

