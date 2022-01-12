//
//  GIFViewController.swift
//  Sample_ImageOnOff
//
//  Created by ssemm on 2022/01/12.
//

import UIKit
import Gifu

class GIFViewController: UIViewController {
    
    
    @IBOutlet var gifImageView: GIFImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        gifImageView.animate(withGIFNamed: "Tyranno")
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SelectViewController")
        
        vc?.modalPresentationStyle = .fullScreen
        self.present(vc!, animated: true, completion: nil)
    }

}
