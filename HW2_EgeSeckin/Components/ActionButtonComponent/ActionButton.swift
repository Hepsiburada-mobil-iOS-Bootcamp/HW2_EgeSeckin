//
//  ActionButton.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 27.09.2021.
//

import Foundation
import UIKit

class ActionButton: UIView{ //Creating Action button blueprint
    
    private lazy var containerView: UIView = {
        //container view for the action button
        
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false // in order to prevent auto layout
        temp.layer.cornerRadius = 6 // corner roundness of the button
        temp.clipsToBounds = true
        temp.backgroundColor = .red
        return temp
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addContainerView()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addContainerView(){
        addSubview(containerView)
        
        NSLayoutConstraint.activate([
        
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ]) //active constraints in an array
    }
    
}
