import 'package:flutter/material.dart';
import 'package:pode_app/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pode_app/screens/places.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class complaints extends StatefulWidget {
  const complaints({super.key});

  @override
  State<complaints> createState() => _complaintsState();
}

class _complaintsState extends State<complaints> {
  TextEditingController cardNumberController = TextEditingController();

  var maskFormatter = new MaskTextInputFormatter(
      mask: '+(258) ###-###-###',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Spacer(),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: cardNumberController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Name",
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                          ),
                        ),
                        TextFormField(
                          inputFormatters: [maskFormatter],
                          decoration: InputDecoration(hintText: "Phone Number"),
                        ),
                        //TextField(inputFormatters: [maskFormatter]),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(hintText: "Residence"),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration:
                                    const InputDecoration(hintText: "Topic"),
                              ),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton.icon(
                              
                          onPressed: () {},
                          icon: Icon(
                            // <-- Icon
                            Icons.upload,
                            
                            size: 24.0,
                          ),
                          label: Text('Attach File'),
                          style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(50, 40)),
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryColor),),
                           // <-- Text
                        ),
                          ],
                        ),
                        
                        SizedBox(
                          height: 15,
                        ),
                        Card(
                            color: Colors.grey[100],
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: TextField(
                                maxLines: 6, //or null
                                decoration: InputDecoration.collapsed(
                                    hintText: "Add The Description here"),
                              ),
                            ))
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                  TextButton(
                    child: Text("Submit"),
                    style: ButtonStyle(
                        // fixedSize: Size.fromHeight(150),
                        minimumSize: MaterialStateProperty.all(Size(190, 50)),
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryColor),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: kPrimaryColor)))),
                    onPressed: () {},
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  TextStyle buildMontserrat(
    Color color, {
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: 18,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
