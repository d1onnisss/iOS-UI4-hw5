//
//  FurnitureController.swift
//  iOS-UI4-hw4
//
//  Created by Alexey Lim on 19/5/24.
//

import UIKit

class FurnitureController: UIViewController {
    
    private lazy var sofaImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sofa")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var backBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "backBtn"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var shareBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "shareBtn"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var loveBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "loveBtn"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "AbocoFur Modern Velvet Fabric Lazy Chair"
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var fiveStarsImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "fiveStars")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let amountLabel: UILabel = {
        let label = UILabel()
        label.text = "$230"
        label.textColor = .systemBlue
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var minusBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 18
        button.setImage(UIImage(systemName: "minus"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let counterLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var plusBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .systemGray6
        button.layer.cornerRadius = 18
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let productDetLabel: UILabel = {
        let label = UILabel()
        label.text = "Product Details"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let roomTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Room Type"
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let colorLabel: UILabel = {
        let label = UILabel()
        label.text = "Color"
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let materialLabel: UILabel = {
        let label = UILabel()
        label.text = "Material"
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let dimensionsLabel: UILabel = {
        let label = UILabel()
        label.text = "Dimensions"
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weightLabel: UILabel = {
        let label = UILabel()
        label.text = "Weight"
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let RTLabel: UILabel = {
        let label = UILabel()
        label.text = "Office, Living Room"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let CLabel: UILabel = {
        let label = UILabel()
        label.text = "Yellow"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let MLabel: UILabel = {
        let label = UILabel()
        label.text = "Textile, Velvet, Cotton"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let DLabel: UILabel = {
        let label = UILabel()
        label.text = "25.6 x 31.5 x 37.4 inches"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let WLabel: UILabel = {
        let label = UILabel()
        label.text = "20.3 Pounds"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var buyBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Buy", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white

        setupUI()
        backBtn.addTarget(self, action: #selector(backBtnTapped), for: .touchUpInside)
        minusBtn.addTarget(self, action: #selector(minusBtnTapped), for: .touchUpInside)
        plusBtn.addTarget(self, action: #selector(plusBtnTapped), for: .touchUpInside)
    }
    
    @objc func backBtnTapped(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func minusBtnTapped(_ sender: UIButton) {
        if let text = counterLabel.text, let count = Int(text), count > 0 {
            let newCount = count - 1
            counterLabel.text = "\(newCount)"
        }
    }

    @objc func plusBtnTapped(_ sender: UIButton) {
        if let text = counterLabel.text, let count = Int(text) {
            let newCount = count + 1
            counterLabel.text = "\(newCount)"
        }
    }
    
    private func setupUI() {
        sofaImageConfig()
        backBtnConfig()
        shareBtnConfig()
        loveBtnConfig()
        descriptionLabelConfig()
        fiveStarsImageConfig()
        amountLabelConfig()
        minusBtnConfig()
        counterLabelConfig()
        plusBtnConfig()
        productDetLabelConfig()
        roomTypeLabelConfig()
        colorLabelConfig()
        materialLabelConfig()
        dimensionsLabelConfig()
        weightLabelConfig()
        RTLabelConfig()
        CLabelConfig()
        MLabelConfig()
        DLabelConfig()
        WLabelConfig()
        buyBtnConfig()
    }
    
    private func sofaImageConfig() {
        view.addSubview(sofaImage)
        
        NSLayoutConstraint.activate(
        [
            sofaImage.topAnchor.constraint(equalTo: view.topAnchor),
            sofaImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sofaImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sofaImage.heightAnchor.constraint(equalToConstant: 400)
        ])
    }
    
    private func backBtnConfig() {
        view.addSubview(backBtn)
        
        NSLayoutConstraint.activate(
        [
            backBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            backBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            backBtn.heightAnchor.constraint(equalToConstant: 36),
            backBtn.widthAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    private func shareBtnConfig() {
        view.addSubview(shareBtn)
        
        NSLayoutConstraint.activate(
        [
            shareBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            shareBtn.leadingAnchor.constraint(equalTo: backBtn.trailingAnchor, constant: 230),
            shareBtn.heightAnchor.constraint(equalToConstant: 36),
            shareBtn.widthAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    private func loveBtnConfig() {
        view.addSubview(loveBtn)
        
        NSLayoutConstraint.activate(
        [
            loveBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            loveBtn.leadingAnchor.constraint(equalTo: shareBtn.trailingAnchor, constant: 12),
            loveBtn.heightAnchor.constraint(equalToConstant: 36),
            loveBtn.widthAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    private func descriptionLabelConfig() {
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate(
        [
            descriptionLabel.topAnchor.constraint(equalTo: sofaImage.bottomAnchor, constant: 12),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 12)
        ])
    }
    
    private func fiveStarsImageConfig() {
        view.addSubview(fiveStarsImage)
        
        NSLayoutConstraint.activate(
        [
            fiveStarsImage.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 12),
            fiveStarsImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            fiveStarsImage.heightAnchor.constraint(equalToConstant: 18),
            fiveStarsImage.widthAnchor.constraint(equalToConstant: 78)
            
        ])
    }
    
    private func amountLabelConfig() {
        view.addSubview(amountLabel)
        
        NSLayoutConstraint.activate(
        [
            amountLabel.topAnchor.constraint(equalTo: fiveStarsImage.bottomAnchor, constant: 20),
            amountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12)
        ])
    }
    
    private func minusBtnConfig() {
        view.addSubview(minusBtn)
        
        NSLayoutConstraint.activate(
        [
            minusBtn.topAnchor.constraint(equalTo: fiveStarsImage.bottomAnchor, constant: 12),
            minusBtn.leadingAnchor.constraint(equalTo: amountLabel.trailingAnchor, constant: 170),
            minusBtn.heightAnchor.constraint(equalToConstant: 36),
            minusBtn.widthAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    private func counterLabelConfig() {
        view.addSubview(counterLabel)
        
        NSLayoutConstraint.activate(
        [
            counterLabel.topAnchor.constraint(equalTo: fiveStarsImage.bottomAnchor, constant: 18),
            counterLabel.leadingAnchor.constraint(equalTo: minusBtn.trailingAnchor, constant: 22)
        ])
    }
    
    private func plusBtnConfig() {
        view.addSubview(plusBtn)
        
        NSLayoutConstraint.activate(
        [
            plusBtn.topAnchor.constraint(equalTo: fiveStarsImage.bottomAnchor, constant: 12),
            plusBtn.leadingAnchor.constraint(equalTo: counterLabel.trailingAnchor, constant: 22),
            plusBtn.heightAnchor.constraint(equalToConstant: 36),
            plusBtn.widthAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    private func productDetLabelConfig() {
        view.addSubview(productDetLabel)
        
        NSLayoutConstraint.activate(
        [
            productDetLabel.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 30),
            productDetLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12)
        ])
    }
    
    private func roomTypeLabelConfig() {
        view.addSubview(roomTypeLabel)
        
        NSLayoutConstraint.activate(
        [
            roomTypeLabel.topAnchor.constraint(equalTo: productDetLabel.bottomAnchor, constant: 16),
            roomTypeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12)
        ])
    }
    
    private func colorLabelConfig() {
        view.addSubview(colorLabel)
        
        NSLayoutConstraint.activate(
        [
            colorLabel.topAnchor.constraint(equalTo: roomTypeLabel.bottomAnchor, constant: 12),
            colorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12)
        ])
    }
    
    private func materialLabelConfig() {
        view.addSubview(materialLabel)
        
        NSLayoutConstraint.activate(
        [
            materialLabel.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 12),
            materialLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12)
        ])
    }
    
    private func dimensionsLabelConfig() {
        view.addSubview(dimensionsLabel)
        
        NSLayoutConstraint.activate(
        [
            dimensionsLabel.topAnchor.constraint(equalTo: materialLabel.bottomAnchor, constant: 12),
            dimensionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12)
        ])
    }
    
    private func weightLabelConfig() {
        view.addSubview(weightLabel)
        
        NSLayoutConstraint.activate(
        [
            weightLabel.topAnchor.constraint(equalTo: dimensionsLabel.bottomAnchor, constant: 12),
            weightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12)
        ])
    }
    
    private func RTLabelConfig() {
        view.addSubview(RTLabel)
        
        NSLayoutConstraint.activate(
        [
            RTLabel.topAnchor.constraint(equalTo: productDetLabel.bottomAnchor, constant: 16),
            RTLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150)
        ])
    }
    
    private func CLabelConfig() {
        view.addSubview(CLabel)
        
        NSLayoutConstraint.activate(
        [
            CLabel.topAnchor.constraint(equalTo: RTLabel.bottomAnchor, constant: 12),
            CLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150)
        ])
    }
    
    private func MLabelConfig() {
        view.addSubview(MLabel)
        
        NSLayoutConstraint.activate(
        [
            MLabel.topAnchor.constraint(equalTo: CLabel.bottomAnchor, constant: 12),
            MLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150)
        ])
    }
    
    private func DLabelConfig() {
        view.addSubview(DLabel)
        
        NSLayoutConstraint.activate(
        [
            DLabel.topAnchor.constraint(equalTo: MLabel.bottomAnchor, constant: 12),
            DLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150)
        ])
    }
    
    private func WLabelConfig() {
        view.addSubview(WLabel)
        
        NSLayoutConstraint.activate(
        [
            WLabel.topAnchor.constraint(equalTo: DLabel.bottomAnchor, constant: 12),
            WLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150)
        ])
    }
    
    private func buyBtnConfig() {
        view.addSubview(buyBtn)
        
        NSLayoutConstraint.activate(
        [
            buyBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            buyBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            buyBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            buyBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
