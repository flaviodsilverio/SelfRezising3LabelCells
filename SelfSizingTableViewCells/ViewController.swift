//
//  ViewController.swift
//  SelfSizingTableViewCells
//
//  Created by Flávio Silvério on 17/02/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let cellsText = ["11",
                    "11111111",
                    "1\n1\n1",
                    "1\n2\n3\n4\n5\n6\n7\n8"]
    
    let backgroundColors = [UIColor.gray, UIColor.darkGray, UIColor.lightGray, UIColor.white]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.estimatedRowHeight = 55.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsText.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SelfSizingCell
    
        cell.label1.text = cellsText[indexPath.row]
        cell.label2.text = cellsText[indexPath.row]
        cell.label3.text = cellsText[indexPath.row]

        cell.backgroundColor = backgroundColors[indexPath.row]
        
        return cell
    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let cell = tableView.cellForRow(at: indexPath) as? SelfSizingCell else { return }
        
        cell.changeState()
        
        tableView.reloadData()
    }

}

