//
//  ActionButton.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 27.09.2021.
//

import Foundation
import UIKit

class ActionButton: GenericBaseView<ActionButtonData>{ //Creating Action button blueprint
        
    private lazy var containerView: UIView = {
        //container view for the action button
        
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false // in order to prevent auto layout
        temp.layer.cornerRadius = 6 // corner roundness of the button
        temp.clipsToBounds = true
        return temp
    }()
    
    private lazy var infoTitle: UILabel = {
        
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = FontManager.bold(14).value
        temp.text = " "
        temp.contentMode = .center
        temp.textAlignment = .center
        
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
    }
    
    private func addContainerView(){
        addSubview(containerView)
        containerView.addSubview(infoTitle)
        
        NSLayoutConstraint.activate([
        
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            infoTitle.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            infoTitle.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
        
        ]) //active constraints in an array
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        infoTitle.text = data.text
        
        switch data.buttonType{
        case .filled(let theme):
            containerView.backgroundColor = theme.value
            infoTitle.textColor = .white
        case .outlined(let theme):
            containerView.layer.borderWidth = 1
            containerView.layer.borderColor = theme.value.cgColor
            containerView.backgroundColor = .white
            infoTitle.textColor = theme.value
        }
    }
}
