//
//  WaitingChatCell.swift
//  IChat
//
//  Created by Ilya on 01.09.2021.
//

import UIKit

class WaitingChatCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseId: String = "WaitingChatCell"
    
    let friendImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        
        self.layer.cornerRadius = 4
        self.clipsToBounds = true
        friendImageView.contentMode = .scaleAspectFill
        setupConstraints()
    }
  
    func configure(with chat: MChat) {
        friendImageView.image = UIImage(named: chat.userImageString)
    }
    
    private func setupConstraints() {
        friendImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(friendImageView)
        
        NSLayoutConstraint.activate([
            friendImageView.topAnchor.constraint(equalTo: self.topAnchor),
            friendImageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            friendImageView.rightAnchor.constraint(equalTo: self.rightAnchor),
            friendImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

// MARK: - SwiftUI

import SwiftUI

struct  WaitingChatChatProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = MainTabBarController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<WaitingChatChatProvider.ContainerView>) -> MainTabBarController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: WaitingChatChatProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<WaitingChatChatProvider.ContainerView>) {
            
        }
    }
}

