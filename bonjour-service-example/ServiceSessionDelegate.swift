//
//  ServiceSessionDelegate.swift
//  bonjour-service-example
//
//  Created by jngd on 01/08/16.
//  Copyright © 2016 jngd. All rights reserved.
//

import Foundation
import MultipeerConnectivity

class ServiceSessionDelegate: NSObject {
}

extension ServiceSessionDelegate : MCSessionDelegate {
	
	func session(session: MCSession, peer peerID: MCPeerID, didChangeState state: MCSessionState) {
		log.debug("peerID \(peerID) state \(state)")
	}
	
	func session(session: MCSession, didReceiveData data: NSData, fromPeer peerID: MCPeerID) {
		log.debug("peerID \(peerID)")
	}
	
	func session(session: MCSession, didReceiveStream stream: NSInputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
		log.debug("streamName \(streamName) peerID \(peerID)")
	}
	
	func session(session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, atURL localURL: NSURL, withError error: NSError?) {
		log.debug("peerID \(peerID) localURL \(localURL) error \(error)")
	}
	
	func session(session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, withProgress progress: NSProgress) {
		log.debug("peerID \(peerID) progress \(progress.completedUnitCount)")
	}

}