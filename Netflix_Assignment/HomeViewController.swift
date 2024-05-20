//
//  HomeViewController.swift
//  Netflix_Assignment
//
//  Created by 강석호 on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var mainPosterImageView: UIImageView!
    @IBOutlet var firstHotPosterImageView: UIImageView!
    @IBOutlet var secondHotPosterImageView: UIImageView!
    @IBOutlet var thirdHotPosterImageView: UIImageView!
    
    @IBOutlet var myListButton: UIButton!
    @IBOutlet var playButton: UIButton!
    
    let movies = ["암살", "노량", "밀수", "서울의봄", "육사오", "더퍼스트슬램덩크", "범죄도시3", "오펜하이머"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainPosterImageView.layer.cornerRadius = 10
        mainPosterImageView.layer.borderColor = UIColor.blue.cgColor
        mainPosterImageView.layer.borderWidth = 1
        
        
        firstHotPosterImageView.layer.cornerRadius = 10
        firstHotPosterImageView.layer.borderColor = UIColor.blue.cgColor
        
        secondHotPosterImageView.layer.cornerRadius = 10
        secondHotPosterImageView.layer.borderColor = UIColor.blue.cgColor
        
        thirdHotPosterImageView.layer.cornerRadius = 10
        thirdHotPosterImageView.layer.borderColor = UIColor.blue.cgColor
        
        playButton.layer.cornerRadius = 5
        myListButton.layer.cornerRadius = 5
    }

    @IBAction func playButtonClicked(_ sender: UIButton) {
        
        let a = Int.random(in: 0...4)
        let b = Int.random(in: 0...4)
        let c = Int.random(in: 0...4)
        
        firstHotPosterImageView.image = UIImage(named: "\(movies[a])")
        secondHotPosterImageView.image = UIImage(named: "\(movies[b])")
        thirdHotPosterImageView.image = UIImage(named: "\(movies[c])")
    }
}
