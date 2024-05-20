//
//  SearchViewController.swift
//  Netflix_Assignment
//
//  Created by 강석호 on 5/16/24.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet var searchView: UIView!
    
    @IBOutlet var expectedButton: UIButton!
    @IBOutlet var allLikeButton: UIButton!
    @IBOutlet var topButton: UIButton!
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.layer.cornerRadius = 10
        
        expectedButton.layer.cornerRadius = 10
        allLikeButton.layer.cornerRadius = 10
        topButton.layer.cornerRadius = 10
        
        expectedButton.titleLabel?.font = .boldSystemFont(ofSize: 20)
        
        let image = UIImage(named: "example")?.withRenderingMode(.alwaysOriginal)
        expectedButton.setImage(image, for: .normal)
        
    }
    
    @IBAction func returnClicked(_ sender: UITextField) {
    }
    
    
    @IBAction func expectedButtonClicked(_ sender: UIButton) {
        
        expectedButton.backgroundColor = .white
        allLikeButton.backgroundColor = .black
        topButton.backgroundColor = .black
        
        expectedButton.tintColor = .black
        allLikeButton.tintColor = .white
        topButton.tintColor = .white
        
        resultLabel.text = "공개 예정 작품이 없습니다 ㅠ"
    }
    
    @IBAction func allLikeButtonClicked(_ sender: UIButton) {
        
        expectedButton.backgroundColor = .black
        allLikeButton.backgroundColor = .white
        topButton.backgroundColor = .black
        
        expectedButton.tintColor = .white
        allLikeButton.tintColor = .black
        topButton.tintColor = .white
        
        resultLabel.text = "인기 콘텐츠가 없습니다 ㅠ"
        
    }
    
    @IBAction func topButtonClicked(_ sender: UIButton) {
        
        expectedButton.backgroundColor = .black
        allLikeButton.backgroundColor = .black
        topButton.backgroundColor = .white
        
        expectedButton.tintColor = .white
        allLikeButton.tintColor = .white
        topButton.tintColor = .black
        
        resultLabel.text = "Top10 시리즈가 없습니다 ㅠ"
    }
}


extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
    func addleftimage(image:UIImage) {
        let leftimage = UIImageView(frame: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
        leftimage.image = image
        leftimage.tintColor = .black
        
        self.leftView = leftimage
        self.leftViewMode = .always
    }
}
