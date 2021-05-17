//
//  HomeViewController.swift
//  MarthaTest
//
//  Created by diego.lechado on 17/05/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let movies: [Movie] = HomeViewModel.movies

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let movieCell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as? MovieTableViewCell else {
            return UITableViewCell()
        }

        let movie = movies[indexPath.row]
        movieCell.bind(movie)

        return movieCell
    }
}

