//
//  CardViewController.swift
//  TheWay
//
//  Created by Mateus on 17/02/26.
//

import UIKit

final class CardViewController: UIViewController {
    
    private let cardView = CardView()
    
    override func loadView() {
        view = cardView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}
