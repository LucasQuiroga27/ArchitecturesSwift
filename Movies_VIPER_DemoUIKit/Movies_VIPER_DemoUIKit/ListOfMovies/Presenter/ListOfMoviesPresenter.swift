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
    
    var models: [PopularMovieEntity] = []
    
    init(listOfMoviesInteractor: ListOfMoviesInteractor) {
        self.listOfMoviesInteractor = listOfMoviesInteractor
    }
    
    func onViewAppear(){
        Task {
            models = await listOfMoviesInteractor.getMovies().results
            ui?.update(movies: models)
        }
    }
}

