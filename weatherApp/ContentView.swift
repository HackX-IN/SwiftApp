//
//  ContentView.swift
//  weatherApp
//
//  Created by Inam 07 on 20/07/1402 AP.
//

import SwiftUI

struct ContentView: View {
    @State var isNight=false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [isNight ? .black :Color.blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Chennai,IND").font(.system(size: 32,weight: .medium,design: .default)).foregroundColor(.white).padding()
                
            VStack(spacing:10){
                    Image(systemName:"cloud.sun.fill").renderingMode(.original).resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                }
            .padding(.bottom,40)
                HStack(spacing:20){
                    Weatherdayview(dayoweek: "TUE",
                                   Imagename: "cloud.sun.fill",
                                   Temp: 80)
                    Weatherdayview(dayoweek: "WED",
                                   Imagename: "sun.max.fill",
                                   Temp: 80)

                    Weatherdayview(dayoweek: "THU",
                                   Imagename: "wind.snow",
                                   Temp: 50)

                    Weatherdayview(dayoweek: "FRI",
                                   Imagename: "sunset.fill",
                                   Temp: 70)
                    Weatherdayview(dayoweek: "SAT",
                                   Imagename: "snow",
                                   Temp: 30)

                    
                }
                Spacer()
                
                Button(action: {
                    isNight.toggle()
                }, label: {
                    Text("Change day time")
                        .frame(width: 180,height: 50).background(Color.white).font(.system(size: 20,weight: .bold,design: .default))
                        .cornerRadius(10)
                })
                Spacer()
            }
            
           
        }
       
    }
}

#Preview {
    ContentView()
}

struct Weatherdayview: View {
    
    var dayoweek:String
    var Imagename:String
    var Temp:Int
    
    
    var body: some View {
        VStack{
            Text(dayoweek)
                .font(.system(size: 16,weight: .medium,design: .default)).foregroundColor(.white)
            Image(systemName:Imagename).renderingMode(.original).resizable().aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(Temp)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
