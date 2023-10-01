//
//  ListOfMoviesPresenter.swift
//  Movies_VIPER_DemoUIKit
//
//  Created by Mac Home on 30/09/23.
//

import Foundation

protocol ListOfMoviesUI: AnyObject {
    func update(movies: [PopularMovieEntity])
}

class ListOfMoviesPresenter {
    
    var ui: ListOfMoviesUI?
    
    private let listOfMoviesInteractor: ListOfMoviesInteractor
    
    init(listOfMoviesInteractor: ListOfMoviesInteractor) {
        self.listOfMoviesInteractor = listOfMoviesInteractor
    }
    
    func onViewAppear(){
        Task {
            let models = await listOfMoviesInteractor.getMovies()
            ui?.update(movies: models.results)
        }
    }
}
