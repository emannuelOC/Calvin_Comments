//
//  BooksTableViewController.swift
//  Calvin_Comments
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/11/15.
//  Copyright (c) 2015 Emannuel Fernandes de Oliveira Carvalho. All rights reserved.
//

import UIKit

class BooksTableViewController: UITableViewController {
    
    var books = ["James", "1 Peter", "2 Peter", "1 John", "2 John", "3 John", "Jude"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("bookCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = books[indexPath.row]

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("BooksToChaptersSegue", sender: books[indexPath.row])
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let viewController = segue.destinationViewController as? ChaptersCollectionViewController {
            if let book = sender as? String {
                viewController.currentBook = book
            }
        }
    }
    

}
