//
//  ColorSliderView.swift
//  ColorConverter
//
//  Created by Benni on 24.09.19.
//  Copyright © 2019 Benni. All rights reserved.
//

import SwiftUI

struct ColorSliderView: View {

	@Binding var colorValue: Float

	var title: String

	var body: some View {
		VStack(alignment: .leading, spacing: 4.0) {
			HStack {
				Text(title)
					.font(.largeTitle)
					.fontWeight(.heavy)

				Spacer()
				Text(NFormatter.twoDecimalPoints(from: colorValue / 255.0))
					.font(.title)
					.fontWeight(.bold)
					.foregroundColor(.secondary)
				Divider()
				Text(NFormatter.wholeNumber(from: colorValue))
					.font(.title)
					.fontWeight(.bold)
					.foregroundColor(.secondary)
			}
			
			Slider(value: $colorValue, in: 0...254, step: 1.0)
		}
	}

}
