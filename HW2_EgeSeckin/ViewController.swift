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
    private var actionButton2: ActionButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addActionButton()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            
            let actionButonData = ActionButtonData(text: "OK", buttonType: .filled(.smooth)).setActionButtonListener(by: self.actionButtonHandler)
            self.actionButton.setData(by: actionButonData)
        }
        
        test(completion: testHandler)
        
    }
    lazy var testHandler: BooleanCompletionBlock = { value in
        print("value : \(value)")
    }
    lazy var actionButtonHandler: VoidCompletionBlock = {
        print("Action Button Pressed!")
    }

    private func addActionButton() {
        actionButton = ActionButton()
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        actionButton.delegate = self
        
        view.addSubview(actionButton)
        
        NSLayoutConstraint.activate([
        
            actionButton.heightAnchor.constraint(equalToConstant: 50),
            actionButton.widthAnchor.constraint(equalToConstant: 120),
            
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        ])
        
    }

    func test(completion: @escaping (Bool) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            completion(true)
        }
        
    }
}

extension ViewController: ActionButtonDelegate{
    
    func actionButtonPressed() {
        //print("ViewController is informed!")
    }
    
}
