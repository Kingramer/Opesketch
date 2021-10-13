//
//  ContentView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/11.
//

import SwiftUI

struct ContentView: View {
    @State var editPopup = false
    @State var operationPopup = false
    @State var canvasPopup = false
    var body: some View {
        let bounds = UIScreen.main.bounds
        let width = Int(bounds.width)
        let height = Int(bounds.height)
        HStack {
            VStack {
                Rectangle()
                    .foregroundColor(.white)
                HStack {
                    Group {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "play.circle")
                                .font(.system(size: 30))
                            Text("play")
                        }
                        .padding()
                        .foregroundColor(.black)
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "pause.circle")
                                .font(.system(size: 30))
                            Text("pause")
                        }
                        .padding()
                        .foregroundColor(.black)
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "stop.circle")
                                .font(.system(size: 30))
                            Text("stop")
                        }
                        .padding()
                        .foregroundColor(.black)
                    }
                }
            }
            Divider()
            HStack {
                VStack {
                    Rectangle()
                        .foregroundColor(.white)
                    Divider()
                    VStack {
                        if editPopup {
                            editPopupView(isPresent: $editPopup)
                        }
                        if operationPopup {
                            operationPopupView(isPresent: $operationPopup)
                        }
                        if canvasPopup {
                            canvasPopupView(isPresent: $canvasPopup)
                        }
                    }
                }
                VStack {
                    Button(action: {
                        self.editPopup.toggle()
                        self.operationPopup = false
                        self.canvasPopup = false
                    }) {
                        Image(systemName: "pencil")
                            .font(.system(size: 40))
                    }
                    .padding()
                    .foregroundColor(.gray)
                    Button(action: {
                        self.operationPopup.toggle()
                        self.editPopup = false
                        self.canvasPopup = false
                    }) {
                        Image(systemName: "scissors")
                            .font(.system(size: 40))
                    }
                    .padding()
                    .foregroundColor(.gray)
                    Button(action: {
                        self.canvasPopup.toggle()
                        self.editPopup = false
                        self.operationPopup = false
                    }) {
                        Image(systemName: "paintbrush")
                            .font(.system(size: 40))
                    }
                    .padding()
                    .foregroundColor(.gray)
                }
            }
            .frame(width: 512.0, height: /*@START_MENU_TOKEN@*/725.0/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
