//
//  ViewController.swift
//  StarMovies
//
//  Created by yun guo on 2022/1/8.
//

import UIKit

public class MainViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "is star Movies"
        label.textColor = .red
        
        view.addSubview(label)
        label.frame = CGRect.init(x: 10, y: 200, width: 120, height: 30)
    }

}

