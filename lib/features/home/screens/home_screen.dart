import 'package:flutter/material.dart';
import 'package:nti2/features/home/widgets/home.dart';
import 'lib/features/home/list.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat,color:Colors.green,),
                label: 'chats'),
            BottomNavigationBarItem(
                icon: Icon(Icons.call,color:Colors.green,),
                label: 'calls'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,color:Colors.green,),
                label: 'setting'),
          ]),
          appBar: AppBar(
            title: const Text(
              'واتساب',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.7,
              ),
            ),
            actions: [
              const Icon(Icons.add),
              const Icon(Icons.search),
              const Icon(Icons.camera_alt_outlined),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                ];
              })
            ],
            backgroundColor: Colors.white,
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: 715,
                child: ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (context, index) =>
                        Home(chatModel: chats[index])),
              ),
              
             
            ],
          )

          //  Padding(
          //    padding: const EdgeInsets.all(10),
          //    child: Column(

          //     children: [
          //       const Divider(
          //         thickness: 1,
          //       ),
          //       Row(
          //         //  crossAxisAlignment: CrossAxisAlignment.start,
          //          mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Container(
          //               width: 80,
          //               height: 80,
          //               decoration: decoration(),
          //               ),
          //           const SizedBox(
          //             width: 20,
          //           ),
          //            Column(
          //             children: [
          //               Text("ethar",style: style(),
          //               ),
          //               Text('فينك؟',style: style(),)
          //             ],
          //           ),
          //           const SizedBox(width: 170,),
          //           const Text('9:45 am'),
          //         ],
          //       )
          //     ],
          //            ),
          //  ),
          ),
    );
  }
}

// Decoration decoration() {
//   return BoxDecoration(
//     borderRadius: BorderRadius.circular(50),
//     image:const DecorationImage(image: NetworkImage(
//          "https://i.pinimg.com/originals/c9/74/fa/c974fa32e316e278a0a1ae9694fad56e.jpg" ),)
//   );
// }

TextStyle style() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}
