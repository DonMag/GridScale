//
//  GridRingViewController.swift
//  SW4Temp
//
//  Created by Don Mag on 3/14/18.
//  Copyright © 2018 DonMag. All rights reserved.
//

import UIKit

class GridRingViewController: UIViewController {
	
	@IBOutlet var gridView: UIImageView!
	@IBOutlet var ringView: UIImageView!
	
	@IBOutlet var ringCenterY: NSLayoutConstraint!
	@IBOutlet var ringCenterX: NSLayoutConstraint!
	
	var hSpace: CGFloat = 0.0
	var vSpace: CGFloat = 0.0

	let numLinesH = 10
	let numLinesV = 9
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	override func viewDidAppear(_ animated: Bool) {
		
		let gridViewW = gridView.frame.size.width
		let gridViewH = gridView.frame.size.height
		
		hSpace = gridViewW / CGFloat(numLinesH)
		vSpace = gridViewH / CGFloat(numLinesV)

	}

	@IBAction func buttonTap(_ sender: Any) {
		if let b = sender as? UIButton {
			if let t = b.currentTitle {
				switch t {
				case "↖︎":	// north-west / up-left
					ringCenterY.constant -= vSpace / 2.0;
					ringCenterX.constant -= hSpace;
					break
				case "↙︎":	// south-west / down-left
					ringCenterY.constant += vSpace / 2.0;
					ringCenterX.constant -= hSpace;
					break
				case "↑":	// up
					ringCenterY.constant -= vSpace;
					break
				case "↓":	// down
					ringCenterY.constant += vSpace;
					break
				case "↘︎":	// south-east / down-right
					ringCenterY.constant += vSpace / 2.0;
					ringCenterX.constant += hSpace;
					break
				case "↗︎":	// north-east / up-right
					ringCenterY.constant -= vSpace / 2.0;
					ringCenterX.constant += hSpace;
					break
				default:
					break
				}
			}
		}
	}
	
}
