//
//  HomeViewController.swift
//  scaffold
//
//  Created by stl-037 on 03/03/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var envLabel: UILabel!
    
    lazy var viewModel = HomeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        envLabel.text = viewModel.getCurrenEnvironment()
    }

}


