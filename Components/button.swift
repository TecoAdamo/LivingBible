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
        backgroundColor = Colors.PrimaryGray
        layer.cornerRadius = 14
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
        
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        
        tintColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        
        contentHorizontalAlignment = .center
        imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 8)
    }
    func configure(title: String, icon: UIImage?){
        setTitle(title, for: .normal)
        setImage(icon, for: .normal)
    }
}
