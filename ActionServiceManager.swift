//
//  ActionServiceManager.swift
//  bonjour-service-example
//
//  Created by jngd on 26/07/16.
//  Copyright © 2016 jngd. All rights reserved.
//

import Foundation
import MultipeerConnectivity
import XCGLogger

class ActionServiceManager: NSObject {



}

extension ActionServiceManager: MCNearbyServiceAdvertiserDelegate {
	
	func advertiser(advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: NSError) {
		log.debug("Error in advertiser \(error)")
	}
	
	func advertiser(advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: NSData?, invitationHandler: (Bool, MCSession) -> Void) {
		log.debug("Invitation receiver from peer")
	}
}
