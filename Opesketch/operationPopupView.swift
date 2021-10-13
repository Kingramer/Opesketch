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
                                .font(.system(size: 40))
                            Text("right")
                        }
                    }
                }
                .padding()
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.left")
                                .font(.system(size: 40))
                            Text("left")
                        }
                    }
                }
                .padding()
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.up")
                                .font(.system(size: 40))
                            Text("up")
                        }
                    }
                }
                .padding()
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.down")
                                .font(.system(size: 40))
                            Text("down")
                        }
                    }
                }
                .padding()
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.clockwise")
                                .font(.system(size: 40))
                            Text("rotation1")
                        }
                    }
                }
                .padding()
                .foregroundColor(.brown)
            }
            HStack {
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.turn.up.right")
                                .font(.system(size: 40))
                            Text("turn right")
                        }
                    }
                }
                .padding()
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.turn.up.left")
                                .font(.system(size: 40))
                            Text("turn left")
                        }
                    }
                }
                .padding()
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.up.left.and.arrow.down.right")
                                .font(.system(size: 40))
                            Text("size up")
                        }
                    }
                }
                .padding()
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.down.right.and.arrow.up.left")
                                .font(.system(size: 40))
                            Text("size down")
                        }
                    }
                }
                .padding()
                .foregroundColor(.brown)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(systemName: "arrow.counterclockwise")
                                .font(.system(size: 40))
                            Text("rotation2")
                        }
                    }
                }
                .padding()
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
