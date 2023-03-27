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
        label.text = "POMIDORCHIK"
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
        view.addSubview(timerLabel)
        view.addSubview(statusLabel)
        view.addSubview(playButton)
    }
    private func setupLayout() {
        timerLabel.snp.makeConstraints { make in
            make.top.equalTo(view).offset(290)
            make.centerX.equalTo(view)
        }
        statusLabel.snp.makeConstraints { make in
            make.top.equalTo(view).offset(380)
            make.centerX.equalTo(view)
        }
        playButton.snp.makeConstraints { make in
            make.top.equalTo(view).offset(490)
            make.centerX.equalTo(view).offset(190)
            make.left.equalTo(view).offset(150)
            make.right.equalTo(view).offset(-150)
            playButton.addTarget(self, action: #selector(playButtonPush), for: .touchUpInside)
        }
    }
        // MARK: - Actions

    @objc func playButtonPush() {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerTick), userInfo: nil, repeats: true)
            playButton.setTitle("PAUSE", for: .normal)
        } else {
            timer?.invalidate()
            timer = nil
            playButton.setTitle("PLAY", for: .normal)
        }
    }
    @objc func timerTick() {
        timeLeft -= 1
        if timeLeft < 0 {
            isWorking = !isWorking
            if isWorking {
                timeLeft = 25
                statusLabel.textColor = .red
                statusLabel.text = "TIME TO WORK!"
            }  else {
                timeLeft = 5
                statusLabel.textColor = .systemGreen
                statusLabel.text = "TIME TO REST!"
            }
        }
        let minutes = timeLeft / 60
        let seconds = timeLeft % 60
        timerLabel.text = String(format: "%02d:%02d", minutes, seconds)
    }
}


