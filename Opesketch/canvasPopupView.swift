//
//  canvasPopupView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/12.
//

import SwiftUI

struct canvasPopupView: View {
    @Binding var isPresent: Bool
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct canvasPopupView_Previews: PreviewProvider {
    static var previews: some View {
        canvasPopupView(isPresent: .constant(false))
    }
}
