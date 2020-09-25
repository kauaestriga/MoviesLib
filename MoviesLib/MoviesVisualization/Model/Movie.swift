//
//  Movie.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 24/09/20.
//  Copyright © 2020 usuarioconvidado. All rights reserved.
//

import Foundation

struct Movie: Codable {
    
    let title: String?
    let categories: String?
    let duration: String?
    let rating: Double?
    let summary: String?
    let image: String?
    
}
