//
//  ColorsTableViewController.swift
//  RandomCorlors
//
//  Created by Nam Nguyen on 05/07/2023.
//

import UIKit

class ColorsTableViewController: UIViewController {
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        // Do any additional setup after loading the view.
    }
    
    func addRandomColors() {
        for _ in 1...50 {
            colors.append(createRandomColor())
        }
    }
    
    func createRandomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green:  CGFloat.random(in: 0...1),
                                  blue:  CGFloat.random(in: 0...1),
                                  alpha:  CGFloat.random(in: 0...1))
        return randomColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // prepare the parameters that will be passed to destVC
        let destVC = segue.destination as! ColorDetailViewController
        destVC.color = sender as? UIColor
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension ColorsTableViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // how many rows are in the table
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // what to show in those cells
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else { return  UITableViewCell() }
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorDetailViewController", sender: color)
    }
}
