//
//  GroupedButton.swift
//  Legion
//
//  Created by isa nur fajar on 19/09/22.
//

import SwiftUI

struct GroupedButton: View {
    var body: some View {
        VStack{
            
            Image("AGL/Image")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Image("LOGEE/Image")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            List{
                LGButton()
                LGButton()
                LGButton()
                LGButton()
            }
        }
    }
}

struct GroupedButton_Previews: PreviewProvider {
    static var previews: some View {
        GroupedButton()
    }
}
