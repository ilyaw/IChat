//
//  SetupProfileViewController.swift
//  IChat
//
//  Created by Ilya on 13.08.2021.
//

import UIKit

class SetupProfileViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "Set up profile!", font: .avenir26())
    
    let fullNameLabel = UILabel(text: "Full name")
    let aboutLabel = UILabel(text: "About me")
    let sexLabel = UILabel(text: "Sex")
    
    let fullNameTextField = OneLineTextField(font: .avenir20())
    let aboutMeTextField = OneLineTextField(font: .avenir20())
    let sexSegmentedControl = UISegmentedControl(first: "Male", second: "Female")
 
    let goToChatsButton = UIButton(title: "Go to chats!", titleColor: .white, backgroundColor: .buttonDark(), cornerRadius: 4)
    
    let fullImageView = AddPhotoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupConstraints()
    }
}

// MARK: - Setup constraints
extension SetupProfileViewController {
    private func setupConstraints() {
        let fullNameStackView = UIStackView(arrangedSubviews: [fullNameLabel, fullNameTextField],
                                            axis: .vertical,
                                            spacing: 0)
        
        let aboutMeStackView = UIStackView(arrangedSubviews: [aboutLabel, aboutMeTextField],
                                            axis: .vertical,
                                            spacing: 0)
        
        let sexStackView = UIStackView(arrangedSubviews: [sexLabel, sexSegmentedControl],
                                            axis: .vertical,
                                            spacing: 10)
        
        goToChatsButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [
                                        fullNameStackView,
                                        aboutMeStackView,
                                        sexStackView,
                                        goToChatsButton],
                                    axis: .vertical,
                                    spacing: 40)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        fullImageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(fullImageView)
        view.addSubview(stackView)
        
        fullImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fullImageView)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            fullImageView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
            fullImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            stackView.topAnchor.constraint(equalTo: fullImageView.bottomAnchor, constant: 40),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
        ])
    }
}

// MARK: - SwiftUI
import SwiftUI

struct SetupProfileVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let setupProfileVC = SetupProfileViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SetupProfileVCProvider.ContainerView>) -> SetupProfileViewController {
            return setupProfileVC
        }
        
        func updateUIViewController(_ uiViewController: SetupProfileVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SetupProfileVCProvider.ContainerView>) {
            
        }
    }
}
