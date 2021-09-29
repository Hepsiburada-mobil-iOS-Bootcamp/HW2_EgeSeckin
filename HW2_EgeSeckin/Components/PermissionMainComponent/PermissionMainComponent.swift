//
//  PermissionMainComponent.swift
//  HW2_EgeSeckin
//
//  Created by Ege Seçkin on 29.09.2021.
//

import UIKit

class PermissionMainComponent: GenericBaseView<PermissionMainComponentData>{
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .white
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [permissionImage, permissionInfoView, permissionActionModule])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 10
        return temp
    }()
    
    private lazy var permissionImage: UIImageView = { //Image for permssion container
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.contentMode = .scaleAspectFit
        return temp
    }()
    
    private lazy var permissionInfoView: LabelPackComponent = { //Text label for permission container
        let temp = LabelPackComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    private lazy var permissionActionModule: ActionModule = { // buttons for permission container
        let temp = ActionModule()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()

    override func addMajorViewComponents() {
        super.addMajorViewComponents()
    }
    
    private func addUserInterfaceComponents(){
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
        ])
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        permissionImage.image = data.image
        permissionInfoView.setData(by: data.labelPackData)
        permissionActionModule.setData(by: data.actionModuleData)
    }

}
