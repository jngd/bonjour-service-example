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
	
	private let exampleServiceType: String = "example-service"
	private let serviceAdvertiser: MCNearbyServiceAdvertiser
	private let serviceAdvertiserDelegate: ServiceAdvertiserDelegate
	private let myPeerId: MCPeerID
	
	override init() {
		self.myPeerId = MCPeerID(displayName: UIDevice.currentDevice().name)
		self.serviceAdvertiser = MCNearbyServiceAdvertiser(peer: myPeerId, discoveryInfo: nil, serviceType: exampleServiceType)
		self.serviceAdvertiserDelegate = ServiceAdvertiserDelegate()
		super.init()
		self.serviceAdvertiser.delegate = serviceAdvertiserDelegate
		self.serviceAdvertiser.startAdvertisingPeer()
	}
	
	deinit {
		self.serviceAdvertiser.stopAdvertisingPeer()
	}
}

// :]