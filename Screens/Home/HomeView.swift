//
//  HomeView.swift
//  TheWay
//
//  Created by Mateus on 17/02/26.
//

import UIKit

final class HomeView: UIView {
    
    private let cardView = CardView()
    private let cardShadowView = CardShadowView()
    
    // MARK: - UI
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Plans"
        label.font = .systemFont(ofSize: 24, weight: .bold)
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
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupView() {
        backgroundColor = .white
        
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        
        addSubview(cardView)
        addSubview(cardShadowView)
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // Título centralizado
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 62),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),

            // Subtítulo alinhado ao início do título
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            
            // Subtítulo logo abaixo do título
            subTitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            
            // CardView
            cardView.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 24),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            cardView.heightAnchor.constraint(equalToConstant: 90),
            
            // CardShadow
            cardShadowView.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 24),
            cardShadowView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            cardShadowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            cardShadowView.heightAnchor.constraint(equalToConstant: 90)
        ])
    }
}
