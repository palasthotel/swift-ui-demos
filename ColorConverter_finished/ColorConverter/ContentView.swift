//
//  ContentView.swift
//  ColorConverter
//
//  Created by Benni on 24.09.19.
//  Copyright © 2019 Benni. All rights reserved.
//

import SwiftUI

struct ContentView: View {

	@State var color = ColorData()

	var body: some View {
		NavigationView {
			ScrollView {
				VStack(spacing: 24.0) {
					HexColorView(hexString: $color.hexString)

					Divider()

					ColorSliderView(colorValue: $color.red, title: "Rot").accentColor(.red)
					ColorSliderView(colorValue: $color.green, title: "Grün").accentColor(.green)
					ColorSliderView(colorValue: $color.blue, title: "Blau").accentColor(.blue)

					Divider()

					ColorSelectionView(hexValue: $color.hexString)
				}
				.padding()
				.navigationBarTitle("Color Converter", displayMode: .inline)
			}
		}
	}
}


