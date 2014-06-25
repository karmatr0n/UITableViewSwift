//
//  DogListTableViewController.swift
//  UITableViewSwift
//
//  Created by Alejandro Juárez Robles on 6/24/14.
//  Copyright (c) 2014 MonsterLabs. All rights reserved.
//

import UIKit

class DogListTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {

    var animals: Animal[] = []
    
    init(coder aDecoder: NSCoder!)
    {
        super.init(coder: aDecoder)
    }
    
    init(style: UITableViewStyle) {
        super.init(style: style)
        // Custom initialization
    }
    
    func setupAnimals () {
        let items = [
            ["White Dog Portrait", "ID-10034505.jpg", "photostock"],
            ["Black Labrador Retriever", "ID-1009881.jpg", "Michael Marcol"],
            ["Anxious Dog", "ID-100120.jpg","James Barker"],
            ["Husky Dog", "ID-100136.jpg", "James Barker"],
            ["Puppy", "ID-100140.jpg", "James Barker"],
            ["Black Labrador Puppy", "ID-10018395.jpg", "James Barker"],
            ["Yellow Labrador", "ID-10016005.jpg", "m_bartosch"],
            ["Black Labrador", "ID-10012923.jpg", "Felixco, Inc."],
            ["Sleepy Dog", "ID-10021769.jpg", "Maggie Smith"],
            ["English Springer Spaniel Puppy", "ID-10056667.jpg", "Tina Phillips"],
            ["Intelligent Dog", "ID-100137.jpg", "James Barker"]
        ]
        for item in items {
            var animal: Animal = Animal(title: item[0], creator: item[2], imageName: item[1])
            self.animals += animal
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupAnimals()
        self.tableView.reloadData()
        self.clearsSelectionOnViewWillAppear = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // #pragma mark - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }
    
    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell? {
        let cell = tableView?.dequeueReusableCellWithIdentifier("animalViewCell", forIndexPath: indexPath) as AnimalViewCell
        cell.setAnimal(self.animals[indexPath.row])
        return cell
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
    }
}
