//
//  ListDeveloperBooksTableViewDelegate.swift
//  Books_MVC_UIKit
//
//  Created by Lucas Quiroga on 22/09/23.
//

import Foundation
import UIKit

class ListDeveloperBooksTableViewDelegate: NSObject, UITableViewDelegate {
    
    var didTapOnCell: ((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOnCell?(indexPath.row)
    }
}
