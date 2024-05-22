//
//  ViewController.swift
//  iOS-UI4-hw4
//
//  Created by Alexey Lim on 19/5/24.
//

import UIKit

class CustomTableView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private var furnitures: [Furniture] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setupData()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "customCell")
    }
    
    private func setupData() {
        furnitures = [
            Furniture(image: "furniture", name: "Furniture", items: "785 items"),
            Furniture(image: "kitchen", name: "Kitchenware", items: "645 items"),
            Furniture(image: "table", name: "Reading table", items: "Inventory"),
        ]
    }
    
    private func setupUI() {
        tableViewConfig()
    }
    
    private func tableViewConfig() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate(
            [
                tableView.topAnchor.constraint(equalTo: view.topAnchor),
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        cell.setCellData(image: furnitures[indexPath.row].image, furLabel: furnitures[indexPath.row].name, itemLabel: furnitures[indexPath.row].items)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let vc = FurnitureController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

