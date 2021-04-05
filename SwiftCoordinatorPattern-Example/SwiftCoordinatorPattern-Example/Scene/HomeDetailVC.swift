//
//  HomeDetailVC.swift
//  SwiftCoordinatorPattern-Example
//
//  Created by Jesse on 2019/6/15.
//  Copyright © 2021 Jesse. All rights reserved.
//

import UIKit

class HomeDetailVC: UIViewController {
    var closeAction: ((HomeDetailVC) -> Void)?
    
    var detailId: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        closeAction?(self)
    }

}
