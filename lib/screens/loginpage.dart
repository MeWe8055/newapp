import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../palatte.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGroundImage(),
        Scaffold(
          body: SafeArea(
            child: Column(
             children: [
               Container(
                 height: 150,
                   child:const Center(
                    child:Text(
                     'RICHLY',
                     style: kHeading,
                    ),
                   )
                 ),
               SizedBox(height:100,
               ),
               Container(
                 padding: const EdgeInsets.
                 symmetric(horizontal: 15),
                 child: Column(
                   children: [

                     Container(
                       decoration: BoxDecoration(
                         color: Colors.grey[600]!.withOpacity(0.5),
                         borderRadius: BorderRadius.circular(8),
                       ),
                       child: TextField(
                         decoration:InputDecoration(
                           contentPadding:
                           const EdgeInsets.symmetric
                             (vertical: 20),
                           border: InputBorder.none,
                           hintText: 'Email',

                           prefixIcon: Padding(
                             padding: const EdgeInsets.
                             symmetric(horizontal:20),
                             child:Icon(
                               FontAwesomeIcons.
                               solidEnvelope,color:Colors.black,
                               size: 30,
                             ),
                           ),
                           hintStyle: kBodyText,

                         ),
                         style: kBodyText,
                         keyboardType: TextInputType.
                         emailAddress,
                         textInputAction: TextInputAction.next,
                       ),
                     ),
                   ],
                 )
               )
               ],
            ),
          ),
        ),

      ],
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);


  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[600]!.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        decoration:InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric
            (vertical: 20),
           border: InputBorder.none,
           hintText: 'Email',

           prefixIcon: Padding(
             padding: const EdgeInsets.
             symmetric(horizontal:20),
            child:Icon(
           FontAwesomeIcons.
           solidEnvelope,color:Colors.black,
           size: 30,
           ),
           ),
           hintStyle: kBodyText,

         ),
        style: kBodyText,
        keyboardType: TextInputType.
        emailAddress,
        textInputAction: TextInputAction.next,
      ),
      ),
    );
  }
}

