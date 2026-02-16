//
//  ViewController.swift
//  TheWay
//
//  Created by Mateus on 15/02/26.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    private let loginAppleButton = Button()
    private let loginGoogleButton = Button()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(logoTheWay)
        view.addSubview(label)
        view.addSubview(subLabel)

        loginGoogleButton.configure(
            title: "Continuar com Google",
            icon: UIImage(named: "googleIcon")
        )

        loginAppleButton.configure(
            title: "Continuar com Apple",
            icon: UIImage(systemName: "apple.logo")
        )

        view.addSubview(loginGoogleButton)
        view.addSubview(loginAppleButton)
        
        
        NSLayoutConstraint.activate([
            logoTheWay.widthAnchor.constraint(equalToConstant: 120),
                logoTheWay.heightAnchor.constraint(equalToConstant: 120),
                logoTheWay.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logoTheWay.bottomAnchor.constraint(equalTo: label.topAnchor, constant: -24),

                // Labels
                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: view.centerYAnchor),

                subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                subLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8),

                // Apple
                loginAppleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                loginAppleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32),
                loginAppleButton.widthAnchor.constraint(equalToConstant: 280),
                loginAppleButton.heightAnchor.constraint(equalToConstant: 50),

                // Google
                loginGoogleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                loginGoogleButton.bottomAnchor.constraint(equalTo: loginAppleButton.topAnchor, constant: -12),
                loginGoogleButton.widthAnchor.constraint(equalToConstant: 280),
                loginGoogleButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
