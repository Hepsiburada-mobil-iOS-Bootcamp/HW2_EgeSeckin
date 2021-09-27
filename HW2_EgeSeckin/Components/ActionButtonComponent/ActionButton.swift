//
//  ActionButton.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 27.09.2021.
//

import Foundation
import UIKit

class ActionButton: BaseView{ //Creating Action button blueprint
    
    private let data: ActionButtonData
    
    private lazy var containerView: UIView = {
        //container view for the action button
        
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false // in order to prevent auto layout
        temp.layer.cornerRadius = 6 // corner roundness of the button
        temp.clipsToBounds = true
        temp.backgroundColor = .red
        return temp
    }()
    
    private lazy var infoTitle: UILabel = {
        
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = FontManager.bold(14).value
        temp.text = "OK"
        temp.contentMode = .center
        temp.textAlignment = .center
        
        return temp
    }()
    init(frame: CGRect, data: ActionButtonData) {
        self.data = data
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
        loadData()
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
    func loadData() {
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
