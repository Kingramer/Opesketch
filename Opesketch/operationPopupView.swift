//
//  operationPopupView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/12.
//

import SwiftUI

struct operationPopupView: View {
    @Binding var isPresent: Bool
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.right")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("right")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.left")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("left")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.up")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("up")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.down")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("down")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.turn.up.right")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("turn R")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.turn.up.left")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("turn L")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.clockwise")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("rotate1")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.counterclockwise")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("rotate2")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.up.left.and.arrow.down.right")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("big")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.down.right.and.arrow.up.left")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("small")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/90.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/110.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
            }
        }
    }
}

struct operationPopupView_Previews: PreviewProvider {
    static var previews: some View {
        operationPopupView(isPresent: .constant(false))
    }
}
