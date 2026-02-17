//
//  ViewController.swift
//  TheWay
//
//  Created by Mateus on 15/02/26.
//

import UIKit

class InitialScreenView: UIViewController {
    
    private let logoTheWay: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logoTheWay")
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 20
        image.clipsToBounds = true

        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let label: UILabel = {
        let primaryLabel = UILabel()
        primaryLabel.text = "login.label.title".localized
        primaryLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        primaryLabel.textColor = .black
        primaryLabel.translatesAutoresizingMaskIntoConstraints = false
        return primaryLabel
    }()
    
    private let subLabel: UILabel = {
        let secondLabel = UILabel()
        secondLabel.text = "login.label.subtitle".localized
        secondLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        secondLabel.textColor = .gray
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        return secondLabel
    }()
    
    private let loginButton = Button()
    private let createAccountButton = Button()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(logoTheWay)
        view.addSubview(label)
        view.addSubview(subLabel)

        loginButton.configure(
            title: "Já tenho uma conta",
            backgroundColor: .clear,
            titleColor: Colors.PrimaryGray,
        )

        createAccountButton.configure(
            title: "Criar conta com email",
            backgroundColor: Colors.PrimaryGray,
            titleColor: .white
        )

        view.addSubview(loginButton)
        view.addSubview(createAccountButton)
        
        
        NSLayoutConstraint.activate([
            logoTheWay.widthAnchor.constraint(equalToConstant: 120),
                logoTheWay.heightAnchor.constraint(equalToConstant: 120),
                logoTheWay.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logoTheWay.bottomAnchor.constraint(equalTo: label.topAnchor, constant: -24),

                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: view.centerYAnchor),

                subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                subLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8),

                loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32),
                loginButton.widthAnchor.constraint(equalToConstant: 280),
                loginButton.heightAnchor.constraint(equalToConstant: 50),

                createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                createAccountButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -12),
                createAccountButton.widthAnchor.constraint(equalToConstant: 280),
                createAccountButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
