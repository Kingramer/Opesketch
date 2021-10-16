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
        VStack {
            HStack {
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.right")
                                .font(.system(size: 50))
                            Text("right")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.left")
                                .font(.system(size: 50))
                            Text("left")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.up")
                                .font(.system(size: 50))
                            Text("up")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.down")
                                .font(.system(size: 50))
                            Text("down")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.clockwise")
                                .font(.system(size: 50))
                            Text("rotate1")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
            }
            HStack {
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.turn.up.right")
                                .font(.system(size: 50))
                            Text("turn R")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.turn.up.left")
                                .font(.system(size: 50))
                            Text("turn L")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.up.left.and.arrow.down.right")
                                .font(.system(size: 50))
                            Text("big")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.down.right.and.arrow.up.left")
                                .font(.system(size: 50))
                            Text("small")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.counterclockwise")
                                .font(.system(size: 50))
                            Text("rotate2")
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
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
