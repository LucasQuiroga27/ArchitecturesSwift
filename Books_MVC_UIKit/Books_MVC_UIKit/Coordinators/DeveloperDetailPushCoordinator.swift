//
//  DeveloperDetailPushCoordinator.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 30/09/23.
//

import Foundation
import UIKit

class DeveloperDetailPushCoordinator: Coordinator {
    
    let bookModel: BookModel
    var navigationController: UINavigationController?
    
    
    init(navigationController: UINavigationController?, bookModel: BookModel){
        self.navigationController = navigationController
        self.bookModel = bookModel
    }
    
    func start() {
        let bookDetailViewController = BookDetailViewController(bookDetailModel: bookModel)
        navigationController?.pushViewController(bookDetailViewController, animated: true)
    }
}
