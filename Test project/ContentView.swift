//
//  ContentView.swift
//  Test project
//
//  Created by user267421 on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack {
                Button("1") {
                    current_number += "1"
                    print("1 pressed")}
                    .frame(width: 100, height: 100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                    
                Button("2") {
                    current_number += "2"
                    print("2 pressed")
                }
                    .frame(width: 100, height: 100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                    
                Button("3") {
                    current_number += "3"
                    print("3 pressed")
                }
                    .frame(width:100, height: 100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
        
            }
            
            HStack {
                Button("4") {
                    current_number += "4"
                    print("4 pressed")
                }
                    .frame(width:100, height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("5") {
                    current_number += "5"
                    print("5 pressed")
                }
                    .frame(width:100, height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("6") {
                    current_number += "6"
                    print("6 pressed")
                }
                    .frame(width:100,height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
            }
            
            HStack {
                Button("7") {
                    current_number += "7"
                    print("7 pressed")
                }
                    .frame(width:100,height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("8") {
                    current_number += "8"
                    print("8 pressed")
                }
                    .frame(width:100,height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("9") {
                    current_number += "9"
                    print("9 pressed")
                }
                    .frame(width:100,height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
            }
            
            HStack {
                Button("+") {
                    sign_pressed(current_sign: "+")
                }
                    .frame(width:100,height:100)
                    .background(Color.red)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("-") {
                    sign_pressed(current_sign: "-")
                }
                    .frame(width:100,height:100)
                    .background(Color.red)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("X") {
                    sign_pressed(current_sign: "X")
                }
                    .frame(width:100,height:100)
                    .background(Color.red)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
            }
            
            HStack{
                Button("%") {
                    sign_pressed(current_sign: "%")
                }
                    .frame(width:100,height:100)
                    .background(Color.red)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("=") {
                    sign_pressed(current_sign: "=")
                }
                .frame(width:100,height:100)
                .background(Color.red)
                .cornerRadius(30)
                .font(.system(size:30, weight:.bold))
                .foregroundColor(.black)
            }
            
        }
    }
}


var current_number: String = ""
var total_numbers: [String] = []
var equal_pressed: Bool = false
var output: Double = 0.0

var sign: [String] = []

func sign_pressed(current_sign: String) {
    sign.append(current_sign)
    total_numbers.append(current_number)
    current_number = ""
    print(total_numbers)
    print(sign)
    print("sign pressed log successfully executed")
}




#Preview {
    ContentView()
}
