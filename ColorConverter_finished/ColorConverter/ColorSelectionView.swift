//
//  ColorSelectionView.swift
//  ColorConverter
//
//  Created by Benni on 24.09.19.
//  Copyright © 2019 Benni. All rights reserved.
//

import SwiftUI

struct ColorSelectionView: View {

	@Binding var hexValue: String



    var body: some View {

		Color(hexString: hexValue)
			.clipShape(RoundedRectangle(cornerRadius: 16.0))
			.shadow(color: .secondary, radius: 4.0, x: 0.0, y: 0.0)
			.frame(minHeight: 200.0)

    }
}

extension Color {
	init(hexString: String) {
		let scanner = Scanner(string: hexString)
		var color: UInt64 = 0
		scanner.scanHexInt64(&color)
		let mask = 0x000000FF

		let red = Float(Int(color >> 16) & mask)
		let green = Float(Int(color >> 8) & mask)
		let blue = Float(Int(color) & mask)

		self.init(red: Double(red / 255), green: Double(green / 255), blue: Double(blue / 255.0))
	}
}
