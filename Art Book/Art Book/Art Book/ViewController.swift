//
//  ViewController.swift
//  Art Book
//
//  Created by Rahul Vattekadath on 07/06/18.
//  Copyright © 2018 rahulvattekadath. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource  {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text="I have set it up right ?"
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    @IBAction func addButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toCreateVC", sender: nil)
    }

    


}

