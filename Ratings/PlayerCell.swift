//
//  PlayerCell.swift
//  Ratings
//
//  Created by Linxi on 16/7/26.
//  Copyright © 2016年 china08. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    @IBOutlet weak var gameLable:UILabel!
    @IBOutlet weak var nameLable:UILabel!
    @IBOutlet weak var ratingImageView:UIImageView!
    var player:Player!{
        didSet{
            gameLable.text = player.game;
            nameLable.text = player.name;
            ratingImageView.image = imageForRating(player.rating);
        }
       
    }
    func imageForRating(rating:Int) -> UIImage? {
        let imageName = "\(rating)Stars"
        return UIImage(named:imageName)
        
    }

}
