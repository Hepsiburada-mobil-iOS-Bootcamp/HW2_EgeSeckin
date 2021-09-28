//
//  ActionButton.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 27.09.2021.
//

import Foundation
import UIKit

class ActionButton: GenericBaseView<ActionButtonData>{ //Creating Action button blueprint
    
    private lazy var shadowContainer: UIView = { //Button shadow
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false // in order to prevent auto layout
        temp.layer.shadowColor = UIColor.black.cgColor
        temp.layer.shadowOffset = CGSize(width: 6, height: 2)
        temp.layer.shadowRadius = 4
        temp.layer.shadowOpacity = 0.4
        temp.layer.cornerRadius = 6
        return temp
        
    }()
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
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        addTapGesture()
    }
    
    private func addContainerView(){
        addSubview(shadowContainer)
        shadowContainer.addSubview(containerView)
        containerView.addSubview(infoTitle)
        
        NSLayoutConstraint.activate([
            
            shadowContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            shadowContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            shadowContainer.topAnchor.constraint(equalTo: topAnchor),
            shadowContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
        
            containerView.leadingAnchor.constraint(equalTo: shadowContainer.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: shadowContainer.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: shadowContainer.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: shadowContainer.bottomAnchor),
            
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


// MARK: - UIGestureRecognizerDelegate
extension ActionButton: UIGestureRecognizerDelegate {
    private func addTapGesture(){
        let tap = UITapGestureRecognizer(target: self, action: .buttonTappedSelector)
        tap.delegate = self
        addGestureRecognizer(tap)
    }
    @objc fileprivate func buttonTapped(_ sender: UITapGestureRecognizer) {
        print("Dügmeye Basıldı!")
    }
}

fileprivate extension Selector {
    static let buttonTappedSelector = #selector(ActionButton.buttonTapped)
}
