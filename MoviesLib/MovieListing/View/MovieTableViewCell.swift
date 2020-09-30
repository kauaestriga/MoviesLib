//
//  MovieTableViewCell.swift
//  MoviesLib
//
//  Created by Eric Alves Brito on 24/09/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var imageViewPoster: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    @IBOutlet weak var labelSummary: UILabel!
    
    // MARK: - Methods
    func configure(with movie: Movie) {
        //imageViewPoster.image = UIImage(named: movie.image ?? "placeholder")
        labelTitle.text = movie.title
        labelRating.text = movie.ratingFormatted
        labelSummary.text = movie.summary
        imageViewPoster.image = movie.poster
    }

}
