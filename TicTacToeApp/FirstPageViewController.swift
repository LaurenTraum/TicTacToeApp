//
//  FirstPageViewController.swift
//  TicTacToeApp
//
//  Created by Lauren Traum on 10/13/17.
//  Copyright © 2017 Lauren Traum. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController {
    var whoPlay = ""
    
    @IBOutlet weak var whoFirst: UISegmentedControl!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let whoFirst = self.whoFirst.selectedSegmentIndex
        let defaults = UserDefaults.standard
        defaults.set(whoFirst, forKey: "Who First")
        if let beginController = segue.destination as? ViewController{
            beginController.whoFirst = whoFirst
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let whoFirst = defaults.integer(forKey: "Who First")
        self.whoFirst.selectedSegmentIndex = whoFirst

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
