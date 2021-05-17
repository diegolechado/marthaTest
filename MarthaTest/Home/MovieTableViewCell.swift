//
//  MovieTableViewCell.swift
//  MarthaTest
//
//  Created by diego.lechado on 17/05/21.
//

import UIKit

final class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    func bind(_ movie: Movie) {
        self.thumbImageView.image = movie.thumb
        self.titleLabel.text = movie.name
        self.descriptionLabel.text = movie.description
    }
}
