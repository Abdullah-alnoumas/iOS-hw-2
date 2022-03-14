//
//  ContentView.swift
//  Homework 2
//
//  Created by Abdullah Alnoumas on 13/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State var numOrder1=" "
    @State var numOrder2=" "
    @State var numOrder3=" "
    
    @State var budget=" "
    
    let priceBigMac=2.250
    let priceHappyMeal=0.950
    let priceMacChicken=1.750
    
    @State var incdec1: Int = 0
    @State var incdec2: Int = 0
    @State var incdec3: Int = 0
    
    @State var total = 0.0
    
    
    @State var men="Menu"
    
    var body: some View {
        VStack{
           
            Text("Mcdonalds")
                .font(.title)
                .fontWeight(.heavy)
                .padding()
            Image("Mcdonalds").resizable()
                .scaledToFit()
                .frame( width: 150, height: 150)
            Text(men)
                .font(.title)
                .fontWeight(.heavy)
                .padding()
           
           
            Spacer()
            
            HStack{
               
                
                
                    
                Spacer()
                
                Text("Big Mac")
                    .font(.title2)
                
                Text("2.250")
                    .font(.title2)
                
                Stepper("amount : \(incdec1)",value:$incdec1)
                    
                
                  
             
                
            }.padding().background(.yellow)
            HStack{
               
                
                
                    
                Spacer()
                
                Text("Happy Meal")
                    .font(.title2)
                
                Text(".950")
                    .font(.title2)
                
                
                
                Stepper("amount : \(incdec2)",value:$incdec2)
                
               
            
    
                
                
        
            }.padding().background(Color(#colorLiteral(red: 0.9218268991, green: 0.6685428619, blue: 0.2301046848, alpha: 1)))
        
            
            HStack{
               
                
                
                    
                Spacer()
                
                Text("Mac Chicken")
                    .font(.title2)
                
                Text("1.750")
                    .font(.title2)
                               
                Stepper("amount : \(incdec3)",value:$incdec3)
                
                
            }.padding().background(.yellow)
            VStack{
                Text("Enter Your Balence ")
                    .font(.title)
                    .fontWeight(.bold)
                TextField("Enter your balance" , text : $budget).frame(width : 200, height : 70).foregroundColor(.white).background(.red).cornerRadius(30)
            
            //Frame Adjustment
            
                        
            Spacer()
            
             Text("Enter")
                 .font(.title)
                 .fontWeight(.heavy)
                 .foregroundColor(Color.black)
                 .padding()
                 .onTapGesture {
                     
                     
                     // Enter Algorithm Here
                    total = (priceBigMac*(Double(incdec1))) + (priceHappyMeal*(Double(incdec2))) +
                     (priceMacChicken*(Double(incdec3)))
                     
                     if (total <= Double(budget) ?? 0){
                        
                         men="Tansaction Complete! "
                         
                     }
                     else{
                         
                         men="Failed, Try Again! "
                     }


                     //stepper stepper<0 NO!
                }
            
            
            
            
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
