//
//  ActionServiceManager.swift
//  bonjour-service-example
//
//  Created by jngd on 26/07/16.
//  Copyright © 2016 jngd. All rights reserved.
//

import Foundation
import MultipeerConnectivity

class ActionServiceManager: NSObject {



}

extension ActionServiceManager: MCNearbyServiceAdvertiserDelegate {
	
	func advertiser(advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: NSError) {
		NSLog("%@", "didNotStartAdvertisingPeer: \(error)")
	}
	
	func advertiser(advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: NSData?, invitationHandler: (Bool, MCSession) -> Void) {
		NSLog("%@", "didReceiveInvitationFromPeer: \(peerID)")
	}	
}
