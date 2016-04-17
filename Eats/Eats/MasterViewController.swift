//
//  MasterViewController.swift
//  Eats
//
//  Created by Riley Testut on 4/17/16.
//  Copyright © 2016 Spark SC. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController
{
    private var pageViewController: UIPageViewController!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Navigation -
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        guard segue.identifier == "embedPageViewController" else { return }
        
        self.pageViewController = segue.destinationViewController as! UIPageViewController
        self.pageViewController.dataSource = self
        
        self.pageViewController.setViewControllers([RestaurantViewController()], direction: .Forward, animated: false, completion: nil)
    }
}

//MARK: - <UIPageViewControllerDataSource> -
extension MasterViewController: UIPageViewControllerDataSource
{
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        return RestaurantViewController()
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        return RestaurantViewController()
    }
}
