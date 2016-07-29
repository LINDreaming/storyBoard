//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by Linxi on 16/7/27.
//  Copyright © 2016年 china08. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    
    var game:String = "Chess" {
        didSet {
            detailLabel.text? = game
        }
    }
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    var player:Player?
    required init?(coder aDecoder: NSCoder) {
        
        print("init PlayerDetailsViewController")
        super.init(coder: aDecoder)
    }
    deinit{
        print("Deinit Player DetailViewController")
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder();
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name: nameTextField.text, game:game, rating: 1)
        }
        
        if segue.identifier == "PickGame" {
            if let gamePickerViewController = segue.destinationViewController as? GamePickerViewController {
                gamePickerViewController.selectedGame = game
            }
        }
    }
    
    @IBAction func unwindWithSelectedGame(segue:UIStoryboardSegue) {
        if let gamePickerViewController = segue.sourceViewController as? GamePickerViewController,
            selectedGame = gamePickerViewController.selectedGame {
            game = selectedGame
        }
    }
}
