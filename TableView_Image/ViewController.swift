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
    /*func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {        
        if editingStyle == .delete
        {
            arr.remove(at: indexPath.row)
            /*tableView.deleteRows(at: [indexPath], with: .automatic)
            NSLog("Row %i Deleted", indexPath.row)*/
            tableView.reloadData()
        }
    }*/
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
    {
        let Edit = UITableViewRowAction(style: .normal, title: "update"){
            action,indexPath in
            self.performSegue(withIdentifier: "Edit", sender: self)
            
        }
        
        let delete = UITableViewRowAction(style: .default, title: "delete"){
            action,indexPath in
             self.arr.remove(at: indexPath.row)
            self.TableView.reloadData()
        }
        return [Edit,delete]
    }
    
    /*func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle
    {
        return 3
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }*/

    @IBAction func AddClick(_ sender: Any)
    {
        if TextField.text != ""
        {
            arr.append(TextField.text!)
            /*let index = IndexPath(row: arr.count - 1, section: 0)
             TableView.insertRows(at: [index], with: .automatic)*/
            TextField.text = ""
            TableView.reloadData()
        }
//        TableView.setEditing(true, animated: true)
    }
}
