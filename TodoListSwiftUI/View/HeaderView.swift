//
//  HeaderView.swift
//  TodoListSwiftUI
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .frame(width: UIScreen.main.bounds.width * 3, height: 350)
                    .rotationEffect(Angle(degrees: angle))
                VStack{
                    Text(title)
                        .foregroundColor(Color.white)
                        .font(.system(size: 50))
                        .bold()
                    Text(subTitle)
                        .foregroundColor(Color.white)
                        .font(.system(size: 30))
                }
                .padding(.top, 80)
            }
            .offset(y: -150)
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subTitle: "Subtitle", angle: 15, background: .blue)
    }
}
