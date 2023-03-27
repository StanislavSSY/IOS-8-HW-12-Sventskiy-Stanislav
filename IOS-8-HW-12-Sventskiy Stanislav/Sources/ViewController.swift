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
    
    private var labelStart: UILabel = {
        let labelStart = UILabel()
        
        
        return labelStart
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
        view.backgroundColor = .systemBlue
        
    }
    
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        
    }
    
    // MARK: - Actions
}

