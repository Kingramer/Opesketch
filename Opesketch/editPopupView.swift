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
        let bounds = UIScreen.main.bounds
        let deviceHeight:CGFloat = bounds.height
        let popupHeight:CGFloat = (deviceHeight - CGFloat(35)) * CGFloat(0.16)
        let buttonFrame:CGFloat = popupHeight * CGFloat(0.75)
        if colorSelect {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Group {
                        Group {
                            Button(action: {
                                colorSelect = false
                            }) {
                                Image(systemName: "arrowshape.turn.up.left")
                                    .modifier(EditImageModify(color: .black))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.black
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .black))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.white
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .white))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.red
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .red))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.blue
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .blue))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.yellow
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .yellow))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.green
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .green))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.orange
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .orange))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.gray
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .gray))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.brown
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .brown))
                            }
                        }
                        Group {
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.cyan
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .cyan))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.purple
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .purple))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.pink
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .pink))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.indigo
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .indigo))
                            }
                            Button(action: {
                                imageBool = true
                                symbolColor = Color.teal
                            }) {
                                Image(systemName: symbolName)
                                    .modifier(EditImageModify(color: .teal))
                            }
                        }
                    }
                    .padding()
                    .frame(width: buttonFrame, height: buttonFrame)//90.0
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
                                    .modifier(EditImageModify(color: .black))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "hare"
                                symbolColor = Color.pink
                                colorSelect = true
                            }) {
                                Image(systemName: "hare")
                                    .modifier(EditImageModify(color: .pink))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "leaf.fill"
                                symbolColor = Color.green
                                colorSelect = true
                            }) {
                                Image(systemName: "leaf.fill")
                                    .modifier(EditImageModify(color: .green))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "face.smiling"
                                symbolColor = Color.orange
                                colorSelect = true
                            }) {
                                Image(systemName: "face.smiling")
                                    .modifier(EditImageModify(color: .orange))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "cloud.heavyrain.fill"
                                symbolColor = Color.blue
                                colorSelect = true
                            }) {
                                Image(systemName: "cloud.heavyrain.fill")
                                    .modifier(EditImageModify(color: .blue))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "ferry"
                                symbolColor = Color.gray
                                colorSelect = true
                            }) {
                                Image(systemName: "ferry")
                                    .modifier(EditImageModify(color: .gray))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "play.rectangle.fill"
                                symbolColor = Color.red
                                colorSelect = true
                            }) {
                                Image(systemName: "play.rectangle.fill")
                                    .modifier(EditImageModify(color: .red))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "ear"
                                symbolColor = Color.brown
                                colorSelect = true
                            }) {
                                Image(systemName: "ear")
                                    .modifier(EditImageModify(color: .brown))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "eyes.inverse"
                                symbolColor = Color.black
                                colorSelect = true
                            }) {
                                Image(systemName: "eyes.inverse")
                                    .modifier(EditImageModify(color: .black))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "star"
                                symbolColor = Color.yellow
                                colorSelect = true
                            }) {
                                Image(systemName: "star")
                                    .modifier(EditImageModify(color: .yellow))
                            }
                        }
                        Group {
                            Button(action: {
                                imageBool = true
                                symbolName = "car.fill"
                                symbolColor = Color.teal
                                colorSelect = true
                            }) {
                                Image(systemName: "car.fill")
                                    .modifier(EditImageModify(color: .teal))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "bicycle"
                                symbolColor = Color.gray
                                colorSelect = true
                            }) {
                                Image(systemName: "bicycle")
                                    .modifier(EditImageModify(color: .gray))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "ladybug"
                                symbolColor = Color.black
                                colorSelect = true
                            }) {
                                Image(systemName: "ladybug")
                                    .modifier(EditImageModify(color: .black))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "tortoise"
                                symbolColor = Color.green
                                colorSelect = true
                            }) {
                                Image(systemName: "tortoise")
                                    .modifier(EditImageModify(color: .green))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "airtag"
                                symbolColor = Color.red
                                colorSelect = true
                            }) {
                                Image(systemName: "airtag")
                                    .modifier(EditImageModify(color: .red))
                            }
                            Button(action: {
                                imageBool = true
                                symbolName = "figure.wave.circle"
                                symbolColor = Color.black
                                colorSelect = true
                            }) {
                                Image(systemName: "figure.wave.circle")
                                    .modifier(EditImageModify(color: .black))
                            }
                        }
                    }
                    .padding()
                    .frame(width: buttonFrame, height: buttonFrame)//90.0
                }
            }
        }
    }
}

struct EditImageModify: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        let bounds = UIScreen.main.bounds
        let deviceHeight:CGFloat = bounds.height
        let popupHeight:CGFloat = (deviceHeight - CGFloat(35)) * CGFloat(0.16)
        let frameSize:CGFloat = popupHeight * CGFloat(0.65)
        let imageSize:CGFloat = popupHeight * CGFloat(0.485)
        content
            .frame(width: frameSize, height: frameSize)//80.0
            .font(.system(size: imageSize))//60.0
            .foregroundColor(color)
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
