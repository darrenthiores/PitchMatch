//
//  HistoryDetailCard.swift
//  PitchMatch
//
//  Created by Nathanael Juan Gauthama on 27/04/24.
//

import SwiftUI

struct HistoryDetailCard: View {
    //    @State var record: History
    @State var song: Song //TODO: nnti ganti History just wanna test some things
    var color: Color?
    var proxy: GeometryProxy
    var body: some View {
        
            HStack(){
                Text("100%")
                    .foregroundStyle(Color.yellowMain)
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                //            RecorderDisplay(backgroundRatios: song.powerRatios.map{ ratio in
                //                Double(truncating: ratio as NSNumber)
                //            },
                //                            powerRatios: song.powerRatios.map{ ratio in
                //                Double(truncating: ratio as NSNumber)
                //            },
                //                            color: Color.yellowMain)
                
                RecorderDisplay(backgroundRatios: song.powerRatios.map{ ratio in
                    Double(truncating: ratio as NSNumber)
                }, powerRatios: song.powerRatios.map{ ratio in
                    Double(truncating: ratio as NSNumber)
                }, color: color ?? Color.yellowMain, proxy: proxy, height: 25)
                Button{
                    
                } label: {
                    CircleNav(iconName: "play.fill", circleSize: 40, iconColor: .white, iconSize: 20, backgroundColor: color ?? Color.yellowMain)
                }
            }
            .frame(height: 100)
            .padding(.horizontal, 10)
            .background(Color.bg)
            .clipShape(.rect(cornerSize: CGSize(width: 10, height: 10)))
        }
}

#Preview {
    GeometryReader { proxy in
        HistoryDetailCard(
            song: Song.getSongs()[1],
            proxy: proxy
        )
    }
}
