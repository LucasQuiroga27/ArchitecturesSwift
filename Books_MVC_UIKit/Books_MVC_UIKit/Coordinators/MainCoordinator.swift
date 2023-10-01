//
//  MainCoordinator.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 30/09/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let developerBooksListViewController = storyboard.instantiateViewController(withIdentifier: "DeveloperBooksListViewController")
        navigationController?.pushViewController(developerBooksListViewController, animated: true)
    }
    
}
