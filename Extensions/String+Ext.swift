//
//  String+Ext.swift
//  TheWay
//
//  Created by Mateus on 15/02/26.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
