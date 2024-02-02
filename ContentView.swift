//
//  ContentView.swift
//  hackatruck7
//
//  Created by Turma01-23 on 23/01/24.
//

import SwiftUI

struct musica : Identifiable, Hashable{
    var id : Int
    var nome: String
    var artista : String
    var capa : String
}
struct album : Identifiable{
    var id : Int
    var capaB: String
    var nomeB : String
    
}


var musicas = [
    musica(id : 1, nome : "receba" , artista: "vinicin", capa : "luva2"),
    musica(id : 2, nome:"gracas a Deus",artista: "brunin do pneu",capa:"luva3"),
    musica(id : 3, nome : "e o cara" , artista: "uchoa", capa : "luva2"),
    musica(id : 4, nome:"luva de pedreiro",artista: "labre",capa:"luva3"),
    musica(id : 5, nome : "reecbaaaa" , artista: "aaaa", capa : "luva2"),
    musica(id : 6, nome:"aaaaaa",artista: "léo",capa:"luva3")
]

var albuns = [
    album(id : 1,  capaB : "luva2", nomeB : "a ascensão da luva" ),
    album(id : 2, capaB:"luva3", nomeB:"luva contra o mundo"),
    album(id : 3,  capaB : "luva2", nomeB : "loiro" ),
    album(id : 4, capaB:"luva3", nomeB:"the life of luva"),
    album(id : 5,  capaB : "luva2", nomeB : "jeluva" ),
    album(id : 6, capaB:"luva3", nomeB:"graduacao")
]

struct ContentView: View {
   
    var body: some View {
        NavigationStack{
            ScrollView{
                ZStack{
                    
                
                    
                    VStack{
                        
                        Image("luva").resizable().frame(width: 222,height: 222)
                        HStack{
                            Text("RecebaFM").font(.largeTitle).foregroundColor(.white)
                            Spacer()
                        }
                        
                        HStack{
                            Image("luva").resizable().frame(width: 30,height: 30)
                            
                            Text("Recebinha").foregroundColor(.white)
                            Spacer()
                        }.padding(.top, -23.0)
                        
                        ForEach(musicas,id: \.id){ b in
                            NavigationLink(destination: Musica(MusicaAtual: b)){
                                HStack{
                                    Image(b.capa).resizable().frame(width: 100,height: 100)
                                   
                                        VStack{
                                            Text(b.nome).font(.largeTitle).foregroundColor(Color.white)
                                            
                                            Text(b.artista).font(.title3).foregroundColor(Color.white).padding(.leading, -50.0)
                                    
                                        }
                                    Spacer()
                                    Image(systemName: "ellipsis").foregroundColor(Color.white)
                                    
                                }.padding()
                                
                                
                            }
                            
                            
                            
                            
                            
                        }
                        HStack{
                            Text("Sugeridos").font(.largeTitle).foregroundColor(Color .white).padding(.leading, -188.0)
                            
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(albuns,id: \.id){ index in
                                    Text("")
                                    VStack{
                                        Image(index.capaB).resizable().frame(width: 150,height: 150)
                                        
                                        Text(index.nomeB).font(.title3).foregroundColor(Color.white)
                                        
                                        
                                        
                                    }
                                }
                            }
                            
                        }
                    }
                    
                }
                
            }.background(
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom))
            
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
