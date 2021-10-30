//
//  editPopupView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/12.
//

import SwiftUI

struct editPopupView: View {
    @Binding var isPresent: Bool
    @Binding var imageBool: Bool
    @Binding var symbolName: String
    @Binding var symbolColor: Color
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    Button(action: {
                        imageBool = true
                        symbolName = "pawprint.fill"
                        symbolColor = Color(.black)
                    }) {
                        Image(systemName: "pawprint.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "hare"
                        symbolColor = (Color.pink)
                    }) {
                        Image(systemName: "hare")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.pink)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "leaf.fill"
                        symbolColor = Color(.green)
                    }) {
                        Image(systemName: "leaf.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.green)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "face.smiling"
                        symbolColor = Color(.orange)
                    }) {
                        Image(systemName: "face.smiling")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.orange)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "cloud.heavyrain.fill"
                        symbolColor = Color(.blue)
                    }) {
                        Image(systemName: "cloud.heavyrain.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.blue)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "ferry"
                        symbolColor = Color(.gray)
                    }) {
                        Image(systemName: "ferry")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.gray)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "play.rectangle.fill"
                        symbolColor = Color(.red)
                    }) {
                        Image(systemName: "play.rectangle.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.red)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "ear"
                        symbolColor = Color(.brown)
                    }) {
                        Image(systemName: "ear")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.brown)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "eyes"
                        symbolColor = Color(.black)
                    }) {
                        Image(systemName: "eyes")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "star"
                        symbolColor = Color(.brown)
                    }) {
                        Image(systemName: "star")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    }
                }
                .padding()
                .frame(width: 90.0, height: 90.0)
                Group {
                    Button(action: {
                        imageBool = true
                        symbolName = "car.fill"
                        symbolColor = Color(.red)
                    }) {
                        Image(systemName: "car.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.red)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "bicycle"
                        symbolColor = Color(.gray)
                    }) {
                        Image(systemName: "bicycle")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.gray)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "ladybug"
                        symbolColor = Color(.black)
                    }) {
                        Image(systemName: "ladybug")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "tortoise"
                        symbolColor = Color(.green)
                    }) {
                        Image(systemName: "tortoise")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.green)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "figure.wave.circle"
                        symbolColor = Color(.black)
                    }) {
                        Image(systemName: "figure.wave.circle")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    }
                    Button(action: {
                        imageBool = true
                        symbolName = "airtag"
                        symbolColor = Color(.red)
                    }) {
                        Image(systemName: "airtag")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.red)
                    }
                }
                .padding()
                .frame(width: 90.0, height: 90.0)
            }
        }
    }
}

struct editPopupView_Previews: PreviewProvider {
    static var previews: some View {
        editPopupView(isPresent: .constant(false), imageBool: .constant(false), symbolName: .constant("pawprint.fill"), symbolColor: .constant(Color(.black)))
    }
}
