//
//  editPopupView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/12.
//

import SwiftUI

struct editPopupView: View {
    @Binding var isPresent: Bool
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "pawprint.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "hare")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.pink)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "leaf.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.green)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "face.smiling")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.orange)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "cloud.heavyrain.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.blue)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "ferry")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.gray)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "play.rectangle.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.red)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "ear")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.brown)
                    }
                    .padding()
                    .frame(width: 90.0, height: 90.0)
                }
            }
        }
    }
}

struct editPopupView_Previews: PreviewProvider {
    static var previews: some View {
        editPopupView(isPresent: .constant(false))
    }
}
