//
//  ViewController.swift
//  bonjour-service-example
//
//  Created by jngd on 26/07/16.
//  Copyright © 2016 jngd. All rights reserved.
//

import UIKit
import MultipeerConnectivity

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

extension ViewController : MCNearbyServiceBrowserDelegate {
	
	func browser(browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) {
		log.debug("foundPeer: \(peerID)")
		log.debug("invitePeer: \(peerID)")
		browser.invitePeer(peerID, toSession: self.exampleServiceManager.session, withContext: nil, timeout: 10)
	}
	
	func browser(browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID) {
		log.debug("lostPeer: \(peerID)")		
	}

}
// :]
