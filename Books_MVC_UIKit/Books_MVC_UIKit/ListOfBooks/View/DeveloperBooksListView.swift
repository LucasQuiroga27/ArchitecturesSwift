//
//  DeveloperBooksListView.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 17/09/23.
//

import Foundation
import UIKit

class DeveloperBooksListView: UIView {
    
    let developerBooksTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(DeveloperBookListCellView.self, forCellReuseIdentifier: "DeveloperBookListCellView")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        addSubview(developerBooksTableView)
        
        NSLayoutConstraint.activate([
            developerBooksTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            developerBooksTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            developerBooksTableView.topAnchor.constraint(equalTo: topAnchor),
            developerBooksTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
}
