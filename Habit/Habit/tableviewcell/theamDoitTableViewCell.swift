//
//  theamDoitTableViewCell.swift
//  Habit
//
//  Created by Charko on 2018. 5. 6..
//  Copyright © 2018년 StudyG. All rights reserved.
//

import UIKit

class theamDoitTableViewCell: UITableViewCell{

    @IBOutlet weak var cbView: UIButton!
    @IBOutlet weak var lbName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        cbView.setImage(UIImage(named: "cbUnchecked"), for: UIControlState.normal)
    }
    
    public func set(content: Doit)
    {
        if content.isChecked == true {
            cbView.setImage(UIImage(named: "cbChecked"), for: UIControlState.normal)
        } else {
            cbView.setImage(UIImage(named: "cbUnchecked"), for: UIControlState.normal)
        }
        
        lbName.text = content.Name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state // 여러번 실행됨
//        print("Selected cell into")
    }

}
