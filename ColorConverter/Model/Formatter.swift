//
//  Formatter.swift
//  ColorConverter
//
//  Created by Benni on 24.09.19.
//  Copyright © 2019 Benni. All rights reserved.
//

import Foundation



struct Formatter {
	static func wholeNumber(from float: Float) -> String {
		let number = NSNumber(value: float)
		let formatter = NumberFormatter()
		formatter.numberStyle = .none
		return formatter.string(from: number) ?? ""
	}

	static func twoDecimalPoints(from float: Float) -> String {
		let number = NSNumber(value: float)
		let formatter = NumberFormatter()
		formatter.numberStyle = .decimal
		formatter.maximumFractionDigits = 2
		return formatter.string(from: number) ?? ""
	}
}
