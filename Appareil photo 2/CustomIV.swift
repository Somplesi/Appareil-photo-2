//
//  CustomIV.swift
//  Appareil photo 2
//
//  Created by Rodolphe DUPUY on 07/10/2020.
//  Copyright © 2020 Rodolphe DUPUY. All rights reserved.
//

import UIKit

class CustomIV: UIImageView {

    func montrerImage(_ image: UIImage?) {
        contentMode = .scaleAspectFit
        isUserInteractionEnabled = true
        self.image = image
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cacherImage)))
    }
    
    @objc func cacherImage() {
        UIView.animate(withDuration: 0.5, animations: {
            self.backgroundColor = .clear
            self.frame.size = CGSize(width: 0, height: 0)
        }) { (success) in
            self.removeFromSuperview()
        }
    }

}

