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
	private let serviceBrowser : MCNearbyServiceBrowser
	private let serviceBrowserDelegate: ServiceBrowserDelegate
	private let serviceSessionDelegate: ServiceSessionDelegate
	private let myPeerId: MCPeerID

	lazy var session: MCSession = {
		let session = MCSession(peer: self.myPeerId, securityIdentity: nil, encryptionPreference: MCEncryptionPreference.Required)
		session.delegate = self.serviceSessionDelegate
		return session
	}()
	
	override init() {

		self.myPeerId = MCPeerID(displayName: UIDevice.currentDevice().name)

		self.serviceAdvertiser = MCNearbyServiceAdvertiser(peer: myPeerId, discoveryInfo: nil, serviceType: exampleServiceType)
		self.serviceAdvertiserDelegate = ServiceAdvertiserDelegate()

		self.serviceBrowser = MCNearbyServiceBrowser(peer: myPeerId, serviceType: exampleServiceType)
		self.serviceBrowserDelegate = ServiceBrowserDelegate()

		self.serviceAdvertiser.delegate = serviceAdvertiserDelegate
		self.serviceBrowser.delegate = serviceBrowserDelegate
		
		self.serviceSessionDelegate = ServiceSessionDelegate()
		
		self.serviceAdvertiser.startAdvertisingPeer()
		
		super.init()
	}
	
	deinit {
		self.serviceAdvertiser.stopAdvertisingPeer()
	}
	
}

extension MCSessionState {
	
	func stringValue() -> String {
		switch (self) {
		case .NotConnected: return "NotConnected"
		case .Connecting: return "Connecting"
		case .Connected: return "Connected"
		default: return "Unknown"
		}
	}
}

// :]