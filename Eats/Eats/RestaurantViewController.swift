//
//  RestaurantViewController.swift
//  Eats
//
//  Created by Riley Testut on 4/17/16.
//  Copyright © 2016 Spark SC. All rights reserved.
//

import UIKit
import Roxas

class RestaurantViewController: UICollectionViewController
{
    private var backgroundView = RSTBackgroundView()
    
    required init()
    {
        let collectionViewLayout = UICollectionViewFlowLayout()
        
        super.init(collectionViewLayout: collectionViewLayout)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.collectionView?.backgroundColor = UIColor.whiteColor()

        self.collectionView?.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: RSTGenericCellIdentifier)
        
        self.backgroundView.textLabel.text = NSLocalizedString("No Data", comment: "")
        self.backgroundView.detailTextLabel.text = NSLocalizedString("Please check back later to see what food is available.", comment: "")
        self.collectionView?.backgroundView = self.backgroundView
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: <UICollectionViewDataSource>
extension RestaurantViewController
{
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 0
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 0
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(RSTGenericCellIdentifier, forIndexPath: indexPath)
        return cell
    }
}
