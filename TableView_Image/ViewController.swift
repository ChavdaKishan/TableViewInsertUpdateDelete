//
//  ViewController.swift
//  TableView_Image
//
//  Created by iFlame. on 23/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    let img = ["1","2","3","4"]
    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    // MARK : - UITableViewDatasource
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return img.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : MyCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCell
        cell.myimage.image = UIImage(named: self.img[indexPath.row])
        cell.mylabel.text = self.img[indexPath.row]
        return cell
    }
}
