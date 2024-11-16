//
//  ContentView.swift
//  Test project
//
//  Created by user267421 on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    @State private var output = ""
    
    @State private var current_number: String = ""
    @State private var total_numbers: [String] = []
    @State private var sign: [Character] = []
    @State private var answer: Int = 0
    @State private var total_numbers_int: [Int] = []

    func number_pressed(input_number: String) {
        current_number += input_number
        output += input_number
        print("\(input_number) pressed")
    }

    func sign_pressed(current_sign: Character) {
        sign.append(current_sign)
        total_numbers.append(current_number)
        current_number = ""
        output += String(current_sign)
        print(total_numbers)
        print(sign)
        print("sign pressed log successfully executed")
    }
    
    func all_clear() {
        sign = []
        total_numbers = []
        output = ""
        current_number = ""
    }
    
    func calculate() {
        output = ""
        total_numbers.append(current_number)
        if sign.isEmpty {
            output = ""
            output += total_numbers.joined()
        } else {
            total_numbers_int = total_numbers.compactMap {Int($0)}
            print("total numbers are \(total_numbers_int)")
            for i in sign.indices {
                if i == 0 {
                    if sign[0] == "+" {
                        answer = total_numbers_int[0] + total_numbers_int[1]
                    } else if sign[0] == "-" {
                        answer = total_numbers_int[0] - total_numbers_int[1]
                    } else if sign[0] == "X" {
                        answer = total_numbers_int[0] * total_numbers_int[1]
                    } else {
                        answer = total_numbers_int[0] / total_numbers_int[1]
                    }
                } else {
                    if sign[i] == "+" {
                        answer = answer + total_numbers_int[i + 1]
                    } else if sign[i] == "-" {
                        answer = answer - total_numbers_int[i + 1]
                    } else if sign[i] == "X" {
                        answer = answer * total_numbers_int[i + 1]
                    } else {
                        answer = answer / total_numbers_int[i + 1]
                    }
                }
            }
            output = String(answer)
        }
    }

    var body: some View {
        VStack {
            HStack{
                Text(output)
                    .padding()
                    .background(Color.white)
                    .font(.system(size:50, weight:.bold))
                    .shadow(radius:5)
                    .cornerRadius(30)
            }
            
            HStack {
                Button("1") {
                    number_pressed(input_number: "1")
                }
                    .frame(width: 100, height: 100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                    
                Button("2") {
                    number_pressed(input_number: "2")
                }
                    .frame(width: 100, height: 100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                    
                Button("3") {
                    number_pressed(input_number: "3")
                }
                    .frame(width:100, height: 100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
        
            }
            
            HStack {
                Button("4") {
                    number_pressed(input_number: "4")
                }
                    .frame(width:100, height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("5") {
                    number_pressed(input_number: "5")
                }
                    .frame(width:100, height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("6") {
                    number_pressed(input_number: "6")
                }
                    .frame(width:100,height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
            }
            
            HStack {
                Button("7") {
                    number_pressed(input_number: "7")
                }
                    .frame(width:100,height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("8") {
                    number_pressed(input_number: "8")
                }
                    .frame(width:100,height:100)
                    .background(Color.green)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("9") {
                    number_pressed(input_number: "9")
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
                Button("AC") {
                    all_clear()
                    print("AC pressed")
                }
                    .frame(width:100, height:100)
                    .background(Color.red)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                          
                
                Button("%") {
                    sign_pressed(current_sign: "%")
                }
                    .frame(width:100,height:100)
                    .background(Color.red)
                    .cornerRadius(30)
                    .font(.system(size:30, weight:.bold))
                    .foregroundColor(.black)
                
                Button("=") {
                    calculate()
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


#Preview {
    ContentView()
}
