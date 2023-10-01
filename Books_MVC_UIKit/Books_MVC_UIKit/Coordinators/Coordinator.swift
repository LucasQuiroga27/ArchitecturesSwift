//
//  Coordinator.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 30/09/23.
//

import Foundation
import UIKit

protocol Coordinator {
    var viewController: UIViewController? { get }
    var navigationController: UINavigationController? { get }
    
    func start()
    
}

extension Coordinator {
    var viewController: UIViewController? { nil }
    var navigationController: UINavigationController? { nil }
    
}
