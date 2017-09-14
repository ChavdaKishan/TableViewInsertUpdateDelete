//
//  EditViewController.swift
//  TableView_Image
//
//  Created by iFlame on 9/14/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class EditViewController: UIViewController
{
    var editvar = ""
    @IBOutlet weak var EditTxt: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OkClick(_ sender: Any)
    {
        editvar = EditTxt.text!
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
