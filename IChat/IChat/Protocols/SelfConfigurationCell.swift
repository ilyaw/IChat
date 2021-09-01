//
//  SelfConfigurationCell.swift
//  IChat
//
//  Created by Ilya on 01.09.2021.
//

import Foundation

protocol SelfConfiguringCell: AnyObject {
    static var reuseId: String { get }
    func configure(with chat: MChat)
}
