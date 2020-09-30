//
//  Movie+RatingFormatted.swift
//  MoviesLib
//
//  Created by Eric Alves Brito on 24/09/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

extension Movie {
    var ratingFormatted: String {
        "⭐️ \(rating)/10"
    }
    
    var poster: UIImage? {
        if let data = image {
            return UIImage(data: data)
        }
        return nil
    }
}
