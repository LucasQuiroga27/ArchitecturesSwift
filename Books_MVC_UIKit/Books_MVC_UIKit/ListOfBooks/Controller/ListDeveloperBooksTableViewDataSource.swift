//
//  ListDeveloperBooksTableViewDataSource.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 20/09/23.
//

import Foundation
import UIKit

final class ListDeveloperBooksTableViewDataSource: NSObject, UITableViewDataSource {
    
    private let tableView: UITableView
    
    private(set) var books: [BookModel] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    init(tableView: UITableView, books: [BookModel] = []){
        self.tableView = tableView
        self.books = books
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeveloperBookListCellView", for: indexPath) as! DeveloperBookListCellView
        
        let book = books[indexPath.row]
        cell.configure(book)
        
        return cell
    }
    
    func set(books: [BookModel]){
        self.books = books
    }
    
    
}
