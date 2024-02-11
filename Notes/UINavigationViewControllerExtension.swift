//
//  UINavigationViewControllerExtension.swift
//  Notes
//
//  Created by Мария Газизова on 11.02.2024.
//

import SwiftUI

extension UINavigationController {
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backButtonDisplayMode = .minimal
    }
}
