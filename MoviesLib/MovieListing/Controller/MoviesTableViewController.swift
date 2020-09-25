//
//  MoviesTableViewController.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 24/09/20.
//  Copyright © 2020 usuarioconvidado. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    // MARK: - Properties
    var movies: [Movie] = []
    
    // MARK: - IBOutlets
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMovies()
    }
    
    // MARK: - IBActions
    
    // MARK: - Methods
    private func loadMovies() {
        guard let jsonURL = Bundle.main.url(forResource: "movies", withExtension: "json") else { return }
        do {
            let jsonData = try Data(contentsOf: jsonURL)
            let jsonDecoder = JSONDecoder()
            movies = try jsonDecoder.decode([Movie].self, from: jsonData)
            tableView.reloadData()
        } catch {
            print(error)
        }
    }
    
    //MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let movie = movies[indexPath.row]
        
        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = movie.categories
        
        return cell
    }
    
}
