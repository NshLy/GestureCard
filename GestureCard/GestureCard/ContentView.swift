//
//  ContentView.swift
//  GestureCard
//
//  Created by Артур on 25.10.2020.
//

import SwiftUI





struct SixthCard: View {
    
    @State var show1 = 0
    @State var show2 = 0
    @State var show3 = 0
//    @ObservedObject var Scan : ShowScan
    //trigger
    
    var body: some View {
        ZStack{
            
            Image("BonusMain").resizable().frame(width: 350, height: 200, alignment: .center).cornerRadius(12)
            
            HStack(spacing: 0){
                ZStack{
                    if show1 == 1{
                Image("611").resizable().frame(width: 115, height: 190, alignment: .center)
                    }
                        else if show1 == 2{
                                           Image("612").resizable().frame(width: 115, height: 190, alignment: .center)
                                                }
                       
                    else if show1 == 3{
                        Image("613").resizable().frame(width: 115, height: 190, alignment: .center)
                    }
                    else if show1 == 4{
                        Image("614").resizable().frame(width: 115, height: 190, alignment: .center)
                    }
                    else if show1 == 0{
                                       Image("010").resizable().frame(width: 115, height: 190, alignment: .center)
                                            }
                    else {
                        Image("615").resizable().frame(width: 115, height: 190, alignment: .center) .onAppear(){
//                            if (show1 > 4)&&(show2 > 4)&&(show3 > 4){
//                                self.Scan.Show = true
//                            }
                            //trigger for button at the end of erasure
                        }
                    }
                   
                    
                }
                
               ZStack{
                if show2 == 1{
            Image("621").resizable().frame(width: 115, height: 190, alignment: .center)
                }
                    else if show2 == 2{
                                       Image("622").resizable().frame(width: 115, height: 190, alignment: .center)
                                            }
                   
                else if show2 == 3{
                    Image("623").resizable().frame(width: 115, height: 190, alignment: .center)
                }
                else if show2 == 4{
                    Image("624").resizable().frame(width: 115, height: 190, alignment: .center)
                }
                else if show2 == 0{
                    Image("020").resizable().frame(width: 115, height: 190, alignment: .center)
                }
                else{
                    Image("625").resizable().frame(width: 115, height: 190, alignment: .center) .onAppear(){
//                        if (show1 > 4)&&(show2 > 4)&&(show3 > 4){
//                            self.Scan.Show = true
//                        }
                         //trigger for button at the end of erasure
                    }
                }
                
                }
                ZStack{
                    if show3 == 1{
                Image("631").resizable().frame(width: 115, height: 190, alignment: .center)
                    }
                        else if show3 == 2{
                                           Image("632").resizable().frame(width: 115, height: 190, alignment: .center)
                                                }
                       
                    else if show3 == 3{
                        Image("633").resizable().frame(width: 115, height: 190, alignment: .center)
                    }
                    else if show3 == 4{
                        Image("634").resizable().frame(width: 115, height: 190, alignment: .center)
                    }
                    else if show3 == 0{
                        Image("030").resizable().frame(width: 115, height: 190, alignment: .center)
                    }
                    else{
                        Image("635").resizable().frame(width: 115, height: 190, alignment: .center) .onAppear(){
//                            if (show1 > 4)&&(show2 > 4)&&(show3 > 4){
//                                self.Scan.Show = true
//                            }
                            //trigger for button at the end of erasure
                        }
                    }
                    
                }
            }
            HStack{
                swipeGesture(show: $show1).frame(width: 115, height: 190, alignment: .center)
                swipeGesture(show: $show2).frame(width: 115, height: 190, alignment: .center)
                swipeGesture(show: $show3).frame(width: 115, height: 190, alignment: .center)
            }
            
        }
    }
}





struct swipeGesture: UIViewRepresentable{
    
    @Binding var show : Int
    
    func makeCoordinator() -> swipeGesture.Coordinator {
        return swipeGesture.Coordinator(parent1: self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<swipeGesture>) -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        let left =  UISwipeGestureRecognizer(target: context.coordinator, action: #selector(context.coordinator.left))
        left.direction = .left
        let right =  UISwipeGestureRecognizer(target: context.coordinator, action: #selector(context.coordinator.right))
        right.direction = .right
        let down =  UISwipeGestureRecognizer(target: context.coordinator, action: #selector(context.coordinator.down))
        down.direction = .down
        let up =  UISwipeGestureRecognizer(target: context.coordinator, action: #selector(context.coordinator.up))
        up.direction = .up
        
        view.addGestureRecognizer(up)
        view.addGestureRecognizer(down)
        view.addGestureRecognizer(left)
        view.addGestureRecognizer(right)
        
        return view
    }
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<swipeGesture>) {
        
    }
    
    class Coordinator : NSObject{
        
        var parent : swipeGesture
        init(parent1 : swipeGesture){
            parent = parent1
        }
        
        @objc func left(){
            parent.show = parent.show + 1
        }
        @objc func down(){
            parent.show = parent.show + 1
        }
        @objc func up(){
            parent.show = parent.show + 1
        }
        @objc func right(){
            parent.show = parent.show + 1
        }
        
        
    }
}
