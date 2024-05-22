//
//  CustomTableViewCell.swift
//  iOS-UI4-hw4
//
//  Created by Alexey Lim on 19/5/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    private let view: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let furnitureImage: UIImageView = {
        let furnitureImage = UIImageView()
        furnitureImage.layer.cornerRadius = 8
        furnitureImage.contentMode = .scaleAspectFill
        furnitureImage.translatesAutoresizingMaskIntoConstraints = false
        return furnitureImage
    }()
    
    private let furnitureLabel: UILabel = {
        let furnitureLabel = UILabel()
        furnitureLabel.text = ""
        furnitureLabel.textColor = .black
        furnitureLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        furnitureLabel.translatesAutoresizingMaskIntoConstraints = false
        return furnitureLabel
    }()
    
    private let itemsLabel: UILabel = {
        let furnitureLabel = UILabel()
        furnitureLabel.text = ""
        furnitureLabel.textColor = .black
        furnitureLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        furnitureLabel.translatesAutoresizingMaskIntoConstraints = false
        return furnitureLabel
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
        
    }
    
    private func setupUI() {
        viewConfig()
        furnitureImageConfig()
        furnitureLabelConfig()
        itemsLabelConfig()
    }
    
    private func viewConfig() {
        contentView.addSubview(view)
        
        NSLayoutConstraint.activate(
        [
            view.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            view.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    private func furnitureImageConfig() {
        view.addSubview(furnitureImage)
        
        NSLayoutConstraint.activate(
        [
            furnitureImage.topAnchor.constraint(equalTo: view.topAnchor),
            furnitureImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            furnitureImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            furnitureImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            furnitureImage.heightAnchor.constraint(equalToConstant: 140)
        ])
    }
    
    private func furnitureLabelConfig() {
        view.addSubview(furnitureLabel)
        
        NSLayoutConstraint.activate(
        [
            furnitureLabel.topAnchor.constraint(equalTo: furnitureImage.bottomAnchor, constant: 8),
            furnitureLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    private func itemsLabelConfig() {
        view.addSubview(itemsLabel)
        
        NSLayoutConstraint.activate(
        [
            itemsLabel.topAnchor.constraint(equalTo: furnitureLabel.bottomAnchor, constant: 8),
            itemsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    func setCellData(image: String, furLabel: String, itemLabel: String) {
        furnitureImage.image = UIImage(named: image)
        furnitureLabel.text = furLabel
        itemsLabel.text = itemLabel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
