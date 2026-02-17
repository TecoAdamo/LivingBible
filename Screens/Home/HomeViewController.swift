//
//  HomeViewController.swift
//  TheWay
//
//  Created by Mateus on 17/02/26.
//

import UIKit

final class HomeViewController: UIViewController {
    
    private let homeView = HomeView()
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}
