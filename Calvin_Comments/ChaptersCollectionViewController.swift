//
//  ChaptersCollectionViewController.swift
//  Calvin_Comments
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/11/15.
//  Copyright (c) 2015 Emannuel Fernandes de Oliveira Carvalho. All rights reserved.
//

import UIKit

let reuseIdentifier = "ChapterCell"

class ChaptersCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let chaptersForBook = ["James" : 5, "1 Peter" : 5, "2 Peter" : 3, "1 John" : 5, "2 John" : 1, "3 John" : 1, "Jude" : 1]
    var currentBook: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.registerClass(ChapterCollectionViewCell.self, forCellWithReuseIdentifier:reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let book = currentBook {
            return chaptersForBook[book]!
        }
        return chaptersForBook["James"]!
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as ChapterCollectionViewCell
//        cell.chapter.text = "\(indexPath.row + 1)"
        cell.backgroundColor = UIColor.greenColor()
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */
    

}
