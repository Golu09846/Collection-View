//
//  MovieCollectionViewCell.swift
//  Project1
//
//  Created by STUDENT on 4/18/24.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var movieImageView: UIImageView!
    
    @IBOutlet var titleLbl: UILabel!
    
    func setup(with movie: Movie) {
        movieImageView.image = movie.image
        titleLbl.text = movie.title
    }
    
    
    
    
}
