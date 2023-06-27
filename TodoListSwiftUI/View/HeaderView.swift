//
//  HeaderView.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                    .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                    .rotationEffect(Angle(degrees: 15))
                VStack{
                    Text("To Do List")
                        .foregroundColor(Color.white)
                        .font(.system(size: 50))
                        .bold()
                    Text("Get Things Done")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30))
                }
                .padding(.top, 30)
            }
            .offset(y: -100)
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
