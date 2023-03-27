//
//  ViewController.swift
//  IOS-8-HW-12-Sventskiy Stanislav
//
//  Created by Stanislav Stanislav on 17.01.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var timer: Timer?
    var timeLeft = 25
    var isWorking = true
    
    // MARK: - UIElements
    private var timerLabel: UILabel = {
        let label = UILabel()
        label.text = "00.25"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 50, weight: .regular)
        return label
    }()
    
    private var statusLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 50, weight: .regular)
        return label
    }()
    
    private var playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        return button
    }()
    
    // MARK: - LifeCicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    
    private func setupView() {
        if #available(iOS 15.0, *) {
            view.backgroundColor = .systemCyan
        } else {
            view.backgroundColor = .white
        }
        
    }
    
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        
    }
    
    // MARK: - Actions
}

