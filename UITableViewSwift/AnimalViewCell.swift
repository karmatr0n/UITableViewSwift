//
//  AnimalViewCell.swift
//  UITableViewSwift
//
//  Created by Alejandro Juárez Robles on 6/24/14.
//  Copyright (c) 2014 MonsterLabs. All rights reserved.
//

import UIKit

class AnimalViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel
    @IBOutlet var creatorLabel: UILabel
    @IBOutlet var imgImageView: UIImageView
    
    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setAnimal(a: Animal) {
        self.titleLabel.text = a.title
        self.creatorLabel.text = a.creator
        self.imgImageView.image = UIImage(named: a.imageName)
    }
}
