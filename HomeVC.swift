//
//  HomeVC.swift
//  AutoLayoutsInSwift
//
//  Created by Alivelu Ravula on 4/17/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    var homeTV:UITableView!
    var menuVC:MenuVC!
    
    var aboutStudStableArray=["Total Days","Working Days","Leaves","Absents","Days Attended","Updates Sent","Working Hours","Worked Hours","Overall Spent Summary","WorkedPerDay(Avg.Hrs)","ShortagePer Day(Avg.Hrs)","Late to Office","Minimum Hrs Missed","Max Points","Points Earned","Your Performance Score"]
    var nilArry=["136","40","4days","9days","97days","81times","880:00:00","799:21:40","-81:39:20","07:16:00(91%)","00:43:59(9%)","9times","7times","3300","2420","73.3333%"]
    
    @IBOutlet weak var homeImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuVC=self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
        
        let ritSwip=UISwipeGestureRecognizer(target: nil, action: #selector(respondToGesture(gesture:)))
        ritSwip.direction = .right
        
        let lftSwip=UISwipeGestureRecognizer(target: nil, action: #selector(respondToGesture(gesture:)))
        lftSwip.direction = .left
        
        self.view.addGestureRecognizer(ritSwip)
        self.view.addGestureRecognizer(lftSwip)
        
      
        // Do any additional setup after loading the view.
    }

    @objc func respondToGesture(gesture:UISwipeGestureRecognizer)
    {
        
        if(gesture.direction == .right)
        {
            showMenu()
        }else if(gesture.direction == .left)
        {
        closeMenu()
        }
        
        
    }
    
    @IBAction func menuBtnActn(_ sender: UIBarButtonItem) {
        if(AppDelegate.displayMenu)
        {
            showMenu()
        }else {
            closeMenu()
        }
        
        
    }
    
//    func closeOnSwipe()
//    {
//       if (AppDelegate.displayMenu)
//       {
//        showMenu()
//
//       }else{
//
//        closeMenu()
//        }
//            }
    
    func showMenu()
    {
        self.addChildViewController(self.menuVC)
        self.view.addSubview(self.menuVC.view)
        AppDelegate.displayMenu=false
    }
    func closeMenu()
    {
        self.menuVC.view.removeFromSuperview()
        AppDelegate.displayMenu=true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aboutStudStableArray.count+1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//var cellll=UITableViewCell()
        
        if(indexPath.row==0)
        {
            let cell=tableView.dequeueReusableCell(withIdentifier: "HomeCell1", for: indexPath) as! HomeCell1
            
            cell.homeImg.image=UIImage(named: "im")
            cell.stntNameLbl.text="Name:"+"Alivelu"
            cell.stdntIDLbl.text="StudentID:"+"1233"
            cell.batchIDLbl.text="BatchID:"+"1712"
            
            return cell
        }
    else
        {
            let cell=tableView.dequeueReusableCell(withIdentifier: "HomeCell2", for: indexPath) as! HomeCell2
            
            cell.atndnceDetailLbl.text=aboutStudStableArray[indexPath.row-1]
            cell.atndnceCountLbl.text=nilArry[indexPath.row-1]
            return cell
            
        }
        
        
//    return cellll
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row==0)
        {
            return 370
            
        }
        else {
            
            return 80
        }
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
