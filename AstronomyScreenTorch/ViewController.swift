//
//  ViewController.swift
//  AstronomyScreenTorch
//
//  Created by Nikhil Hore on 08/10/2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var toggleTorchButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.setTitle("Toggle Torch", for: .normal)
        button.addTarget(
            self,
            action: #selector(toggleTorch),
            for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        view.addSubview(toggleTorchButton)
        NSLayoutConstraint.activate([
            toggleTorchButton.centerXAnchor
                .constraint(equalTo: view.centerXAnchor),
            toggleTorchButton.centerYAnchor
                .constraint(equalTo: view.centerYAnchor),
        ])
    }

    @objc func toggleTorch() {
        if view.backgroundColor == .blue {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .blue
        }
    }
}
