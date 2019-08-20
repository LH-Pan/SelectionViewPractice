//
//  ViewController.swift
//  SelectionViewAssignment
//
//  Created by 潘立祥 on 2019/8/19.
//  Copyright © 2019 PanLiHsiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SelectionViewDataSource, SelectionViewDelegate {
    
    var selectionView: SelectionView!
    
    let buttonTitle: [String] = ["123", "456"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectionView = SelectionView(frame: CGRect(x: 0, y: 60, width: UIScreen.main.bounds.width, height: 150))
       
        selectionView.backgroundColor = .brown
        
        selectionView.dataSource = self
        
        view.addSubview(selectionView)

    }
    
  
    
    func textOfSelections(_ selectionView: SelectionView) -> String {
        return "123"
    }
    



}

