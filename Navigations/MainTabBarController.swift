//
//  MainTabBarController.swift
//  TheWay
//
//  Created by Mateus on 17/02/26.
//

import UIKit

class MainTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        setupAppearance()
    }
    private func setupTabs(){
        let homeVC = HomeViewController()
    
        homeVC.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            tag: 1
        )
        viewControllers = [
            homeVC
        ]
    }
        private func setupAppearance() {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
    
            appearance.backgroundColor = Colors.PrimaryGray
    
            appearance.stackedLayoutAppearance.selected.iconColor = Colors.PrimaryGray
            appearance.stackedLayoutAppearance.selected.titleTextAttributes = [
                .foregroundColor: Colors.PrimaryGray
            ]
    
            appearance.stackedLayoutAppearance.normal.iconColor = Colors.PrimaryGray
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [
                .foregroundColor: UIColor.lightGray
            ]
    
            tabBar.standardAppearance = appearance
            tabBar.scrollEdgeAppearance = appearance
        }
}
