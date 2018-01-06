//
//  ViewController.swift
//  PinchGestureImage
//
//  Created by SO YOUNG on 2018. 1. 6..
//  Copyright © 2018년 SO YOUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgPinch: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let Pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.gestureHandler(gesture:)))
        self.view.addGestureRecognizer(Pinch)
    }
    @objc func gestureHandler(gesture: UIPinchGestureRecognizer) {
        imgPinch.transform = imgPinch.transform.scaledBy(x: gesture.scale, y: gesture.scale)
        //다음 변환을 위해 속성 설정
        gesture.scale = 1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

