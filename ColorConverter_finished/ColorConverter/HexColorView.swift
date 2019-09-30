//
//  HexColorView.swift
//  ColorConverter
//
//  Created by Benni on 24.09.19.
//  Copyright © 2019 Benni. All rights reserved.
//

import SwiftUI


struct HexColorView: View {
	@Binding var hexString: String

	var body: some View {
		
		VStack(alignment: .leading, spacing: 4.0) {
			Text("Hex")
				.font(.largeTitle)
				.fontWeight(.heavy)

			HStack {
				Text("#")
					.font(.title)
					.fontWeight(.bold)
					.foregroundColor(.secondary)

				TextField("Hex Hex", text: $hexString)
					.font(.largeTitle)
					.foregroundColor(.primary)
					.textFieldStyle(PlainTextFieldStyle())
			}
		}
	}
}


class HexFormatter: Formatter {
	override func string(for obj: Any?) -> String? {
		return obj as? String
	}

	override func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool {

		if string.count > 6 {
			return false
		}


		obj?.pointee = string as AnyObject
		return true
	}
}
