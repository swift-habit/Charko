//
//  EditorViewController.swift
//  Habit
//
//  Created by Charko on 2018. 4. 29..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {

    @IBOutlet weak var contentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        contentTextView.layer.borderWidth = 1.0 // cgFloat
        contentTextView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) // UIColor.black.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
