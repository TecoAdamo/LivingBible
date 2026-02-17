//
//  button.swift
//  TheWay
//
//  Created by Mateus on 15/02/26.
//

import UIKit

final class Button: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup(){
        layer.cornerRadius = 14
        titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        translatesAutoresizingMaskIntoConstraints = false
        contentHorizontalAlignment = .center
        
    }
    func configure(
        title: String,
        backgroundColor: UIColor,
        titleColor: UIColor = .white
    ) {
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
    }
}
