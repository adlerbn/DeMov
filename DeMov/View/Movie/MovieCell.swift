//
//  MovieCell.swift
//  DeMov
//
//  Created by Yahya Bn on 14/05/1400 AP.
//

import UIKit

class MovieCell: UICollectionViewCell {
    
    var title: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Deadpool"
        return label
    }
    var image: UIImageView {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
    var linearView: UIView {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        addLinear(view)
        return view
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure() {
        addSubview(image)
        addSubview(linearView)
        addSubview(title)
        
        NSLayoutConstraint.activate([
            title.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 10),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 5),
            
            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            
            linearView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            linearView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            linearView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            linearView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
        ])
    }
    
    func addLinear(_ view: UIView) {
        let gl = CAGradientLayer()
        gl.colors = [ UIColor.clear, UIColor.black]
        gl.locations = [ 0.0, 1.0]
        gl.frame = view.frame
        view.layer.insertSublayer(gl, at: 0)
    }
}
