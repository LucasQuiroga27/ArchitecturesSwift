//
//  ListOfMoviesView.swift
//  Movies_VIPER_DemoUIKit
//
//  Created by Mac Home on 30/09/23.
//

import Foundation
import UIKit

class ListOfMoviesView: UIViewController {
    
    var presenter: ListOfMoviesPresenter?
    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray3
        presenter?.onViewAppear()
    }
    
}

extension ListOfMoviesView: ListOfMoviesUI {
    func update(movies: [PopularMovieEntity]) {
        print("datos request : \(movies)")
    }
}
