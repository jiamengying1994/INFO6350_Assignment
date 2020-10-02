//
//  ViewController.swift
//  Card Game
//
//  Created by my on 9/28/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var player1: UILabel!
    
    @IBOutlet weak var player2: UILabel!
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var topleft: UIImageView!
    
    @IBOutlet weak var topmiddle: UIImageView!
    
    @IBOutlet weak var topright: UIImageView!
    
    @IBOutlet weak var bottomleft: UIImageView!
    
    @IBOutlet weak var bottommiddle: UIImageView!
    
    @IBOutlet weak var bottomright: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let one = arc4random_uniform(57)
        let two = arc4random_uniform(57)
        let three = arc4random_uniform(57)
        let four = arc4random_uniform(57)
        let five = arc4random_uniform(57)
        let six = arc4random_uniform(57)
        
        topleft.image = UIImage(named: "\(one)")
        topmiddle.image = UIImage(named: "\(two)")
        topright.image = UIImage(named: "\(three)")
        bottomleft.image = UIImage(named: "\(four)")
        bottommiddle.image = UIImage(named: "\(five)")
        bottomright.image = UIImage(named: "\(six)")
        
        playButton.setTitle("Play", for: .normal)
        if((one == 39 || two == 39 || three == 39) && (four == 39 || five == 39 || six == 39)){result.text = "Both player win"}
        if((one == 39 || two == 39 || three == 39)) {
            result.text = "Winner is player1"
        }
        if((four == 39 || five == 39 || six == 39)) {
            result.text = "Winner is player2"
        }
        
        if(one != 39 &&  two != 39 && three != 39 && four != 39 && five != 39 && six != 39) {
            result.text = "No Winner"
        }
        
        if(one == 39 || two == 39 || three == 39 || four == 39 || five == 39 || six == 39) {
            playButton.setTitle("Play Again?", for: .normal)
        }
        
    }
    

}

