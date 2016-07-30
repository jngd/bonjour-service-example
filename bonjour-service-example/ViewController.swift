//
//  ViewController.swift
//  bonjour-service-example
//
//  Created by jngd on 26/07/16.
//  Copyright © 2016 jngd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let exampleServiceManager = ActionServiceManager()

	@IBOutlet weak var connectionLabel: UILabel!
	
	@IBAction func actionATapped(sender: AnyObject) {
		log.debug("")
	}
	
	@IBAction func actionBTapped(sender: AnyObject) {
		log.debug("")
	}

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

}

// :]
