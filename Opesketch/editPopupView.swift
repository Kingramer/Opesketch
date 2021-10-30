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
    @State var colorSelect:Bool = false
    var body: some View {
        if colorSelect {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Group {
                        Group {
                            Button(action: {
                                colorSelect = false
                            }) {
                                Image(systemName: "arrowshape.turn.up.left")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.black)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.black
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.black)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.white
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.white)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.red
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.red)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.blue
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.blue)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.yellow
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.yellow)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.green
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.green)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.orange
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.orange)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.gray
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.gray)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.brown
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.brown)
                            }
                        }
                        Group {
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.cyan
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.cyan)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.purple
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.purple)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.pink
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.pink)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.indigo
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.indigo)
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.teal
                            }) {
                                Image(systemName: symbolName)
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.teal)
                            }
                        }
                    }
                    .padding()
                    .frame(width: 90.0, height: 90.0)
                }
            }
        } else {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Group {
                        Group {
                            Button(action: {
                                imageBool = true
                                symbolName = "pawprint.fill"
                                symbolColor = Color.black
                                colorSelect = true
                            }) {
                                Image(systemName: "pawprint.fill")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.black)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "hare"
                                symbolColor = Color.pink
                                colorSelect = true
                            }) {
                                Image(systemName: "hare")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.pink)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "leaf.fill"
                                symbolColor = Color.green
                                colorSelect = true
                            }) {
                                Image(systemName: "leaf.fill")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.green)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "face.smiling"
                                symbolColor = Color.orange
                                colorSelect = true
                            }) {
                                Image(systemName: "face.smiling")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.orange)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "cloud.heavyrain.fill"
                                symbolColor = Color.blue
                                colorSelect = true
                            }) {
                                Image(systemName: "cloud.heavyrain.fill")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.blue)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "ferry"
                                symbolColor = Color.gray
                                colorSelect = true
                            }) {
                                Image(systemName: "ferry")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.gray)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "play.rectangle.fill"
                                symbolColor = Color.red
                                colorSelect = true
                            }) {
                                Image(systemName: "play.rectangle.fill")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.red)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "ear"
                                symbolColor = Color.brown
                                colorSelect = true
                            }) {
                                Image(systemName: "ear")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.brown)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "eyes.inverse"
                                symbolColor = Color.black
                                colorSelect = true
                            }) {
                                Image(systemName: "eyes.inverse")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.black)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "star"
                                symbolColor = Color.yellow
                                colorSelect = true
                            }) {
                                Image(systemName: "star")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.yellow)
                            }
                        }
                        Group {
                            Button(action: {
                                imageBool = true
                                symbolName = "car.fill"
                                symbolColor = Color.red
                                colorSelect = true
                            }) {
                                Image(systemName: "car.fill")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.red)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "bicycle"
                                symbolColor = Color.gray
                                colorSelect = true
                            }) {
                                Image(systemName: "bicycle")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.gray)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "ladybug"
                                symbolColor = Color.black
                                colorSelect = true
                            }) {
                                Image(systemName: "ladybug")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.black)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "tortoise"
                                symbolColor = Color.green
                                colorSelect = true
                            }) {
                                Image(systemName: "tortoise")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.green)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "figure.wave.circle"
                                symbolColor = Color.black
                                colorSelect = true
                            }) {
                                Image(systemName: "figure.wave.circle")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.black)
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "airtag"
                                symbolColor = Color.red
                                colorSelect = true
                            }) {
                                Image(systemName: "airtag")
                                    .frame(width: 80.0, height: 80.0)
                                    .font(.system(size: 60))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                    .padding()
                    .frame(width: 90.0, height: 90.0)
                }
            }
        }
    }
}

/*
func ImageSystem(name:String, color:Color) {
    Image(systemName: name)
        .frame(width: 80.0, height: 80.0)
        .font(.system(size: 60))
        .foregroundColor(color)
}
 */

struct editPopupView_Previews: PreviewProvider {
    static var previews: some View {
        editPopupView(isPresent: .constant(false), imageBool: .constant(false), symbolName: .constant("pawprint.fill"), symbolColor: .constant(Color(.black)))
    }
}
