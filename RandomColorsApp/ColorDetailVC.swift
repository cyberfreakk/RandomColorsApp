//
//  ColorDetailVC.swift
//  RandomColorsApp
//
//  Created by Arunesh Gupta on 17/10/23.
//

import UIKit

class ColorDetailVC: UIViewController {

    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? UIColor.blue
    }
}
