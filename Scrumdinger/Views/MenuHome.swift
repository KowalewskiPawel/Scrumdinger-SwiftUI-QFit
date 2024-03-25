//
//  MenuHome.swift
//  Scrumdinger
//
//  Created by Pawel on 25/03/2024.
//

import SwiftUI

struct MenuHome: View {
    var body: some View {
        VStack {
            HStack {
                Text("Good to see you again").font(.system(size: 50)).fontWeight(.heavy)
                Image(systemName: "bolt.fill").font(.system(size: 150))
            }
            HStack(alignment: .center) {
                Image("plank")
                VStack(alignment: .leading) {
                    Text("Today's Workout").foregroundStyle(.orange).bold()
                    Text("30 mins")
                        .font(.title)
                        .bold()
                        .padding()
                    HStack {
                        Text("Full Body"
                        )
                        Image(systemName: "arrow.right")
                    }.padding(.leading, 10)
                }
            }
            .padding(8)
            .background {
                ZStack(alignment: .top) {
                    Rectangle()
                }
                .foregroundColor(.white)
            }
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .padding(.bottom, 10)
            
            VStack {
                VStack(alignment: .leading) {
                    Text("Boost your motivation")
                        .font(.title)
                        .bold()
                        .padding(.bottom, 10)
                    Text("Challenge your friends")
                }
                .padding(.trailing, 80)
                Button {
                    
                } label: {
                    Text("Bet")
                        .foregroundColor(.black)
                        .bold()
                        .frame(maxWidth: 300, minHeight: 32)
                        .background(.orange)
                        .cornerRadius(10)
                }
            }
            .padding()
            .frame(width: 300)
            .background(Image("fist").scaleEffect(CGSize(width: 0.7, height: 0.7)).position(x: 250, y: 110))
            .background {
                ZStack(alignment: .top) {
                    Rectangle()
                }
                .foregroundColor(.white)
            }
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        
            Spacer()
        }.background(Image("menu-gradient").resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 900))
        .preferredColorScheme(.light)
    }
}

#Preview {
    MenuHome()
}
