//
//  Musica.swift
//  hackatruck7
//
//  Created by Turma01-23 on 23/01/24.
//

import SwiftUI

struct Musica: View {
    
    //        @State var idd : Int = 0
    //        @State var nomee: String = ""
    //        @State var artistaa : String = ""
    //        @State var capaa : String = ""
    
    @State var MusicaAtual : musica
   
    
    //    var b : String?
    
    var body: some View {
        
        GeometryReader{ geo in
            VStack{
                
                Spacer()
                
                Image(MusicaAtual.capa).resizable().frame(width: 300,height: 300)
                
                Text(MusicaAtual.nome).font(.largeTitle).foregroundColor(Color.white)
                
                Text(MusicaAtual.artista).font(.title).foregroundColor(Color.white)
                
                HStack{
                    
                    Spacer()
                    
                    Image(systemName:  "shuffle").resizable().frame(width: 50,height: 50).foregroundColor(Color.white)
                    
                    
                    Button{
                        if let  index = musicas.firstIndex(where: { $0 == MusicaAtual }){
                            
                          
                             
                            
                            if (index  == 0){
                                
                                MusicaAtual = musicas[0]
                            }
                            else{
                                MusicaAtual = musicas[index - 1]}
                            
                            
                    }
                        
                    }label: {
                        Image(systemName:  "backward.end.fill").resizable().frame(width: 50,height: 50).foregroundColor(Color.white)}
                    
                    Spacer()
                    
                    Image(systemName:  "play.fill").resizable().frame(width: 90,height: 90).foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button{
                        if let  index = musicas.firstIndex(where: { $0 == MusicaAtual }){
                            if (index + 1 == musicas.endIndex){
                                MusicaAtual = musicas[0]
                            }
                            else{
                                MusicaAtual = musicas[ index + 1]
                                
                            }
                            
                    }
                    
                }label:{
                    Image(systemName:  "forward.end.fill").resizable().frame(width: 50,height: 50).foregroundColor(Color.white)}
                    
                    
                    Button{
                        
                            
                            print("FOOOOI")
                            
                        
                        
                            
                        
                    }label: {
                        Image(systemName:  "repeat").resizable().frame(width: 50,height: 50).foregroundColor(Color.white)
                        
                    }
                }.padding()
                Spacer()
                
            }.background(
                LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom))
        }
        
        
    }
    
    
}

//extension musicas where Element: Hashable{
  //  func voltar (_ item: Element) -> Element{
   //     var  index = self.firstIndex(where: { $0 == item })
   //     index  = index! == 0 ? self.endIndex-1 : index!.advanced(by: -1)
   //     return self[index!]}}





struct Musica_Previews: PreviewProvider {
    static var previews: some View {
        Musica(MusicaAtual:  musica(id : 1, nome : "receba" , artista: "vinicin", capa : "luva2"))
    }
}
