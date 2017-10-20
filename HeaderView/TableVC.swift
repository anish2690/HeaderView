//
//  ViewController.swift
//  HeaderView
//
//  Created by Anish George on 20/10/17.
//  Copyright © 2017 Anish George. All rights reserved.
//

import UIKit

struct postStruct {
    var image: UIImage!
    var name: String!
}

var heightOfHeader: CGFloat = 44

class ViewController: UITableViewController {

    
    
    var arrayOfPost = [postStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        arrayOfPost = [postStruct.init(image: #imageLiteral(resourceName: "like"), name: "Anish"),postStruct.init(image: #imageLiteral(resourceName: "like"), name: "Jilby"),postStruct.init(image: #imageLiteral(resourceName: "like"), name: "George"),postStruct.init(image: #imageLiteral(resourceName: "like"), name: "Antony")]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        return cell!
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfPost.count
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return heightOfHeader
    }


}

