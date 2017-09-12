//
//  ViewController.swift
//  TableView_Image
//
//  Created by iFlame. on 23/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var TableView: UITableView!
    
    var arr = ["montu","chintan","kishan","sunil","shilesh","sagar","harshad"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    // MARK : - UITableViewDatasource
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : MyCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyCell
        cell.Lbl.text = arr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {        
        if editingStyle == .delete
        {
            arr.remove(at: indexPath.row)
            /*tableView.deleteRows(at: [indexPath], with: .automatic)
            NSLog("Row %i Deleted", indexPath.row)*/
            tableView.reloadData()
        }
    }
    
    @IBAction func AddClick(_ sender: Any)
    {
        arr.append(TextField.text!)
        /*let index = IndexPath(row: arr.count - 1, section: 0)
        TableView.insertRows(at: [index], with: .automatic)*/
        TextField.text = ""
        TableView.reloadData()
    }
}
