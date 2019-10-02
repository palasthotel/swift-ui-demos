//
//  ColorView.swift
//  ColorConverter
//
//  Created by Benni on 24.09.19.
//  Copyright © 2019 Benni. All rights reserved.
//

import SwiftUI

struct ColorView: View {

	@Binding var hexValue: String

    var body: some View {

		Color(hexString: hexValue)
			.clipShape(RoundedRectangle(cornerRadius: 16.0))
			.shadow(color: .secondary, radius: 4.0, x: 0.0, y: 0.0)
			.frame(minHeight: 200.0)

    }
}


