//
//  CardView.swift
//  TheWay
//
//  Created by Mateus on 17/02/26.
//

import UIKit

final class CardView: UIView {
    
    // MARK: - UI
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Create you plan of letter"
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.textColor = Colors.PrimaryGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Start your journey"
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let myButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("+", for: .normal)
        btn.tintColor = Colors.PrimaryGray
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        btn.setTitleColor(Colors.PrimaryGray, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 34)
        return btn
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupView() {
        backgroundColor = .white
        layer.cornerRadius = 10
        clipsToBounds = true
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        addSubview(myButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // Título centralizado
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),

            // Subtítulo alinhado ao início do título
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            
            // Subtítulo logo abaixo do título
            subTitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            
            // Icone +
            myButton.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            myButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
        ])
    }
}
