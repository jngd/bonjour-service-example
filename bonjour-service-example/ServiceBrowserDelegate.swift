//
//  ServiceBrowserDelegate.swift
//  bonjour-service-example
//
//  Created by jngd on 30/07/16.
//  Copyright © 2016 jngd. All rights reserved.
//

import Foundation
import MultipeerConnectivity

class ServiceBrowserDelegate: NSObject {
}

extension ServiceBrowserDelegate: MCNearbyServiceBrowserDelegate {

	func browser(browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: NSError) {
		log.debug("")
	}
	
	func browser(browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) {
		log.debug("")
	}
	
	func browser(browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID) {
		log.debug("")
	}

}

// :]