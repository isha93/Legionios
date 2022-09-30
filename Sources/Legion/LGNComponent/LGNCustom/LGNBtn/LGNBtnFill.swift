//
//  SwiftUIView.swift
//  
//
//  Created by isa nur fajar on 28/09/22.
//

import SwiftUI

@available(macOS 15.15, *)
public struct LGNBtnFill: View {
    public init(){
        
    }
    
    public var body: some View {
        Button {
            print("Coba2")
        } label: {
            Image(systemName: "message")
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.LGNTheme.primary)
        }

    }
}

@available(macOS 15.15, *)
struct LGNBtnFill_Previews: PreviewProvider {
    static var previews: some View {
        LGNBtnFill()
    }
}
