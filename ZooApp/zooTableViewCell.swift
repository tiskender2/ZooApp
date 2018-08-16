//
//  zooTableViewCell.swift
//  ZooApp
//
//  Created by tolga iskender on 16.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import UIKit

class zooTableViewCell: UITableViewCell {

    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.cornerRadius = 10
        view.layer.shadowColor  = UIColor.black.cgColor
        view.layer.opacity = 1
    
    }
    
    func setAnimal(animal:Animal) {
        self.label.text = animal.name
        self.textField.text = animal.des
        self.animalImage.image = UIImage(named: "\(animal.image)")
        
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
