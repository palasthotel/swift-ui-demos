//
//  ColorData.swift
//  ColorConverter
//
//  Created by Benni on 24.09.19.
//  Copyright © 2019 Benni. All rights reserved.
//

import Foundation

struct ColorData {

	var red: Float = Float.random(in: 0...254)
	var green: Float = Float.random(in: 0...254)
	var blue: Float = Float.random(in: 0...254)

	var hexString: String {
		set {
			updateRGBValues(from: newValue)
		}
		get {
			String(format:"%02X", Int(red)) + String(format:"%02X", Int(green)) + String(format:"%02X", Int(blue))
		}
	}

	private mutating func updateRGBValues(from hex: String) {
		guard validateHexString(hex) else { return }

		let scanner = Scanner(string: hex)
		var color: UInt64 = 0
		scanner.scanHexInt64(&color)
		let mask = 0x000000FF

		red = Float(Int(color >> 16) & mask)
		green = Float(Int(color >> 8) & mask)
		blue = Float(Int(color) & mask)
	}

	private func validateHexString(_ hex: String) -> Bool {
		guard hex.count == 6 else { return false }
		let chars = CharacterSet(charactersIn: "0123456789ABCDEF")
		guard hex.uppercased().rangeOfCharacter(from: chars) != nil else {
		   return false
		}

		return true
	}

}
