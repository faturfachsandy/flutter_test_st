import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//components
import 'components/input_component.dart';
import 'components/button_component.dart';

//page
import 'page/result_page.dart';

//provider
import 'provider/state_provider.dart';

class MyHome extends StatelessWidget {
  
  MyHome({super.key});

  TextEditingController userInput = TextEditingController(text: '');

  void warning(context, warn){
    var pesan = (warn) ? 'Lihat hasil!' : 'Masukkan angka pada Input N';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 1),
        content: Text(pesan),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              MyInput(
                controller: userInput,
                label: 'Input N',
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: MyButton(
                      textButton: '1',
                      onTap: () {
                        if(userInput.text == ''){
                          warning(context, false);
                        }else{
                          context.read<StateProvider>().number_one(userInput.text);
                          warning(context, true);
                        }
                      },
                    ), 
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: MyButton(
                      textButton: '2',
                      onTap: () {
                        if(userInput.text == ''){
                          warning(context, false);
                        }else{
                          context.read<StateProvider>().number_two(userInput.text);
                          warning(context, true);
                        }
                      },
                    ), 
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: MyButton(
                      textButton: '3',
                      onTap: () {
                        if(userInput.text == ''){
                          warning(context, false);
                        }else{
                          context.read<StateProvider>().number_three(userInput.text);
                          warning(context, true);
                        }
                      },
                    ), 
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: MyButton(
                      textButton: '4',
                      onTap: () {
                        if(userInput.text == ''){
                          warning(context, false);
                        }else{
                          context.read<StateProvider>().number_four(userInput.text);
                          warning(context, true);
                        }
                      },
                    ), 
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Result:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 350,
                //color: Colors.grey[100],
                child: MyResult(
                  text: context.watch<StateProvider>().results,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


