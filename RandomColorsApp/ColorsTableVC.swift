//
//  ColorsTableVC.swift
//  RandomColorsApp
//
//  Created by Arunesh Gupta on 17/10/23.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var Colors: [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        addRandomColor()
    }
    
    func addRandomColor() {
        for _ in 0..<100{
            Colors.append(.random())
        }
    }
    
    enum Cells{
        static let colorCell = "ColorCell"
    }
    
    enum Segues{
        static let toDetail = "ToColorDetailsVC"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell, for: indexPath)
        cell.backgroundColor = Colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = Colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
    
}
