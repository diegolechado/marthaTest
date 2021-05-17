//
//  HomeViewModel.swift
//  MarthaTest
//
//  Created by diego.lechado on 17/05/21.
//

import UIKit

struct Movie {
    let name: String
    let description: String
    let thumb: UIImage?
    let image: UIImage?

    init(name: String, description: String, thumb: UIImage?, image: UIImage?) {
        self.name = name
        self.description = description
        self.thumb = thumb
        self.image = image
    }
}

final class HomeViewModel {
    static let movies: [Movie] = [Movie(name: "Fight Club",
                                        description: "An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.",
                                        thumb: UIImage(named: "thumb-fight-club"),
                                        image: UIImage(named: "fight-club")),
                                  Movie(name: "Baby driver",
                                        description: "After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.",
                                        thumb: UIImage(named: "thumb-baby-driver"),
                                        image: UIImage(named: "baby-driver"))]
}
