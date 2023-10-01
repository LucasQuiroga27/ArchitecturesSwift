//
//  BookDetailViewController.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 23/09/23.
//

import Foundation
import UIKit

class BookDetailViewController: UIViewController {
    
    var mainView: BookDetailView { self.view as! BookDetailView}
    
    init(bookDetailModel: BookModel){
        super.init(nibName: nil, bundle: nil)
        mainView.configure(bookDetailModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = BookDetailView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
