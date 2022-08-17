//
//  ContentView.swift
//  5 project
//
//  Created by ابناء فهد on 15/08/2022.
//

import SwiftUI

struct ContentView: View {
   @State var groceryItems = ["doritos","Kinder","tomto"]
    @State var newItem = ""
    var body: some View {
        VStack {
            List(groceryItems,id:\.self) { i  in
            
                HStack{
                    Image(i)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text(i)
                }
          
        }
            
            HStack{
                Button {
                    groceryItems.append(newItem)
                } label: {
                    Image(systemName:" plus")
                        .frame(width: 100, height: 100)
                    .background(.green)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                }
                TextField("New Items", text: $newItem)
                
                Button {
                    groceryItems.remove(at: 0)
                } label: {
                    Image(systemName: "Minus")
                        .frame(width: 100, height: 100)
                    .background(.red)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    
                }

            }.padding()
            }
             }
        }
        
   
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
