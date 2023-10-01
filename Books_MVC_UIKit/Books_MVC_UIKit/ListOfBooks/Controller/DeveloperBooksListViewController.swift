//
//  ViewController.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 17/09/23.
//

import UIKit

class DeveloperBooksListViewController: UIViewController {
    
    var mainView: DeveloperBooksListView { self.view as! DeveloperBooksListView}
    let apiClient = ListOfDeveloperBooksAPIClient()
    private var tableViewDataSource: ListDeveloperBooksTableViewDataSource?
    private var tableViewDelegate: ListDeveloperBooksTableViewDelegate?
    
    var developerDetailPushCoordinator: DeveloperDetailPushCoordinator?
    
    
    override func loadView() {
        view = DeveloperBooksListView()
        tableViewDelegate = ListDeveloperBooksTableViewDelegate()
        
        tableViewDataSource = ListDeveloperBooksTableViewDataSource(tableView: mainView.developerBooksTableView)
        mainView.developerBooksTableView.dataSource = tableViewDataSource
        mainView.developerBooksTableView.delegate = tableViewDelegate
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            print("Index\(index)")
            
            guard let dataSource = self?.tableViewDataSource else {
                return
            }
            
            let bookModel = dataSource.books[index]
            self?.developerDetailPushCoordinator = DeveloperDetailPushCoordinator(navigationController: self?.navigationController, bookModel: bookModel)
            
            self?.developerDetailPushCoordinator?.start()
            
        }
        
        Task {
            let books = await apiClient.getListOfDeveloperBooks()
            tableViewDataSource?.set(books: books.books)
        }
    }


}

