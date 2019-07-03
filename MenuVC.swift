//
//  MenuVC.swift
//  AutoLayoutsInSwift
//
//  Created by Alivelu Ravula on 4/17/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class MenuVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var menuTable: UITableView!
    var pagesArry=["Home","Attendance Summery","Create Request","Status Update","Apply Leave","App Research","Logout"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pagesArry.count+1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var celll=UITableViewCell()
    if(indexPath.row==0)
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVC1", for: indexPath) as! TVC1
        
        cell.studentImg.image=UIImage(named: "im")
        return cell
        }
        else
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.pagesLbl.text=pagesArry[indexPath.row-1]
        return cell
        
        
        }
        
//        return celll
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.row==1)
        {
            let storyboard=UIStoryboard(name:"Main" , bundle: nil)
            let home=storyboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(home, animated: true)
        }
        else if(indexPath.row==2)
        {
            let storyboard=UIStoryboard(name: "Main", bundle: nil)
            let attendance=self.storyboard?.instantiateViewController(withIdentifier: "AttendanceVC")as! AttendanceVC
            self.navigationController?.pushViewController(attendance, animated: true)
            
        }
            else if indexPath.row==3
             {
        let storyboard=UIStoryboard(name:"Main" , bundle: nil)
        let reqVC=storyboard.instantiateViewController(withIdentifier: "CreateReqVC") as! CreateReqVC
        self.navigationController?.pushViewController(reqVC, animated: true)
             }
       
        else if indexPath.row==4
                {
                    let storyboard=UIStoryboard(name:"Main",bundle:nil)
        let StatusContrlr=storyboard.instantiateViewController(withIdentifier: "StatusVC") as! StatusVC
                    self.navigationController?.pushViewController(StatusContrlr, animated: true)
                }
            else if(indexPath.row==5)
        {
            let storyboard=UIStoryboard(name: "Main", bundle: nil)
            let leave=storyboard.instantiateViewController(withIdentifier: "ApplyLeaveVC") as! ApplyLeaveVC
            self.navigationController?.pushViewController(leave, animated: true)
            
        }
                else if indexPath.row==6
                {
                    let storyboard=UIStoryboard(name:"Main",bundle:nil)
                    let appSearch=storyboard.instantiateViewController(withIdentifier: "AppSearchVC") as! AppSearchVC
                    self.navigationController?.pushViewController(appSearch, animated: true)
        
                }
        else if( indexPath.row==7)
        {
            let storyboard=UIStoryboard(name: "Main", bundle: nil)
            let logout=storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.navigationController?.pushViewController(logout, animated: true)
            
        }

            }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row==0)
        {
            return 150
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
