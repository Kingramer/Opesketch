//
//  canvasPopupView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/12.
//

import SwiftUI

struct canvasPopupView: View {
    @Binding var isPresent:Bool
    @Binding var canvasColor:Color
    var body: some View {
        let bounds = UIScreen.main.bounds
        let deviceHeight:CGFloat = bounds.height
        let popupHeight:CGFloat = (deviceHeight - CGFloat(35)) * CGFloat(0.16)
        let buttonPadding:CGFloat = popupHeight * CGFloat(0.08)
        let buttonSize:CGFloat = popupHeight * CGFloat(0.725)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    Group {
                        Button(action: {canvasColor = Color.black}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.black)
                        Button(action: {canvasColor = Color.black.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.black.opacity(0.5))
                        Button(action: {canvasColor = Color.white}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.white)
                        Button(action: {canvasColor = Color.red}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.red)
                        Button(action: {canvasColor = Color.red.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.red.opacity(0.5))
                        Button(action: {canvasColor = Color.blue}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.blue)
                        Button(action: {canvasColor = Color.blue.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.blue.opacity(0.5))
                        Button(action: {canvasColor = Color.yellow}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.yellow)
                        Button(action: {canvasColor = Color.yellow.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.yellow.opacity(0.5))
                    }
                    Group {
                        Button(action: {canvasColor = Color.green}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.green)
                        Button(action: {canvasColor = Color.green.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.green.opacity(0.5))
                        Button(action: {canvasColor = Color.orange}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.orange)
                        Button(action: {canvasColor = Color.orange.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.orange.opacity(0.5))
                        Button(action: {canvasColor = Color.gray}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.gray)
                        Button(action: {canvasColor = Color.gray.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.gray.opacity(0.5))
                        Button(action: {canvasColor = Color.brown}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.brown)
                        Button(action: {canvasColor = Color.brown.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.brown.opacity(0.5))
                        Button(action: {canvasColor = Color.cyan}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.cyan)
                        Button(action: {canvasColor = Color.cyan.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.cyan.opacity(0.5))
                    }
                    Group {
                        Button(action: {canvasColor = Color.purple}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.purple)
                        Button(action: {canvasColor = Color.purple.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(.purple.opacity(0.5))
                        Button(action: {canvasColor = Color.pink}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(Color.pink)
                        Button(action: {canvasColor = Color.pink.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(Color.pink.opacity(0.5))
                        Button(action: {canvasColor = Color.indigo}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(Color.indigo)
                        Button(action: {canvasColor = Color.indigo.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(Color.indigo.opacity(0.5))
                        Button(action: {canvasColor = Color.teal}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(Color.teal)
                        Button(action: {canvasColor = Color.teal.opacity(0.5)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(Color.teal.opacity(0.5))
                        Button(action: {canvasColor = Color(red: 0.96875, green: 0.953125, blue: 0.8984375)}) {
                            RoundedRectangle(cornerRadius: 10)
                        }
                        .foregroundColor(Color(red: 0.96875, green: 0.953125, blue: 0.8984375))
                    }
                }
                .padding(.all, buttonPadding)
                .frame(width: buttonSize, height: buttonSize)
            }
        }
    }
}

struct canvasPopupView_Previews: PreviewProvider {
    static var previews: some View {
        canvasPopupView(isPresent: .constant(false), canvasColor: .constant(.white))
    }
}
