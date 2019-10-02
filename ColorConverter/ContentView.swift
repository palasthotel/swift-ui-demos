//
//  ContentView.swift
//  ColorConverter
//
//  Created by Benni on 24.09.19.
//  Copyright © 2019 Benni. All rights reserved.
//

import SwiftUI

struct ContentView: View {

	// Model color data, defined as @State, so the view reloads everytime the color data is changed.
	@State var color = ColorData()

	var body: some View {
		// NavigationView for showing a nav bar and title
		NavigationView {
			// ScrollView for giving some dynamics to the interface
			ScrollView {
				// The VStack houses the main interface components
				VStack(spacing: 24.0) {
					
					HexColorView(hexString: $color.hexString)

					Divider()

					ColorSliderView(colorValue: $color.red, title: "Rot").accentColor(.red)
					ColorSliderView(colorValue: $color.green, title: "Grün").accentColor(.green)
					ColorSliderView(colorValue: $color.blue, title: "Blau").accentColor(.blue)

					Divider()

					ColorView(hexValue: $color.hexString)
				}
				.padding()
				.navigationBarTitle("Color Converter", displayMode: .inline)
			}
		}
	}
}


