//
//  ColorDetailViewController.swift
//  RandomCorlors
//
//  Created by Nam Nguyen on 05/07/2023.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // unwrap and use
        view.backgroundColor = color ?? .blue
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
