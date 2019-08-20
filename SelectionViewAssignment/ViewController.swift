//
//  ViewController.swift
//  SelectionViewAssignment
//
//  Created by 潘立祥 on 2019/8/19.
//  Copyright © 2019 PanLiHsiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SelectionViewDataSource, SelectionViewDelegate {
    
    var firstSelectionView: SelectionView!
    
    var secondSelectionView: SelectionView!
    
    var firstColorView: UIView!
    
    var secondColorView: UIView!
    
    let firstSelectionTitle: [String] = ["Red", "Yellow"]
    
    let secondSelectionTitle: [String] = ["Red", "Yellow", "Blue"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstSelectionView = SelectionView(frame: CGRect(x: 0,
                                                    y: 60,
                                                    width: UIScreen.main.bounds.width,
                                                    height: 150))
        
        firstColorView = UIView(frame: CGRect(x: 0,
                                              y: 210,
                                              width: UIScreen.main.bounds.width,
                                              height: 150))
        
        secondSelectionView = SelectionView(frame: CGRect(x: 0,
                                                    y: 400,
                                                    width: UIScreen.main.bounds.width,
                                                    height: 150))
        
        secondColorView = UIView(frame: CGRect(x: 0,
                                               y: 550,
                                               width: UIScreen.main.bounds.width,
                                               height: 150))
       
        firstSelectionView.backgroundColor = .brown
        secondSelectionView.backgroundColor = .brown
        
        firstColorView.backgroundColor = .red
        secondColorView.backgroundColor = .red
        
        view.addSubview(firstSelectionView)
        view.addSubview(secondSelectionView)
        view.addSubview(firstColorView)
        view.addSubview(secondColorView)
        
        firstSelectionView.dataSource = self
        
        firstSelectionView.delegate = self
        
        secondSelectionView.dataSource = self
        
        secondSelectionView.delegate = self

    }
    
    func numberOfSelections(_ selectionView: SelectionView) -> Int {
        
        switch selectionView {
            
        case firstSelectionView: return firstSelectionTitle.count
            
        case secondSelectionView: return secondSelectionTitle.count
            
        default: return 0
        }
    }
    
  
    
    func textOfSelections(_ selectionView: SelectionView, index: Int) -> String {
        
        switch selectionView {
            
        case firstSelectionView: return firstSelectionTitle[index]
            
        case secondSelectionView: return secondSelectionTitle[index]
            
        default: return ""
        }
    }

    func didSelected(_ selectionView: SelectionView, index: Int) {
        
        switch selectionView {
            
        case firstSelectionView:
            
            switch index {
                
            case 0: firstColorView.backgroundColor = .red
                
            case 1: firstColorView.backgroundColor = .yellow
                
            default: firstColorView.backgroundColor = .white
                
            }
            
        case secondSelectionView:
            
            switch index {
                
            case 0: secondColorView.backgroundColor = .red
                
            case 1: secondColorView.backgroundColor = .yellow
                
            case 2: secondColorView.backgroundColor = .blue
                
            default: secondColorView.backgroundColor = .white
                
            }
            
        default: break
        }
    }
    
    func enable(_ selectionView: SelectionView, index: Int) -> Bool {
        
        if selectionView == firstSelectionView {
            
            return true
            
        } else {
            
            if firstSelectionView.selectedIndex == firstSelectionTitle.count - 1 {
                
                return false
                
            } else {
                
                return true
            }
        }
    }
}

