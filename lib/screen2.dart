import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtut/riverpodstate.dart';

class Screen2 extends ConsumerStatefulWidget {
  Screen2({super.key});

  final route = MaterialPageRoute(builder: (context) => Screen2());

  @override
  ConsumerState<Screen2> createState() => _Screen2State();
}

class _Screen2State extends ConsumerState<Screen2> {
  String thisname = 'Fetch screen 1 ';
  String thisschool = 'Data here';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    bool shower = ref.watch(boolprovider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'ConsumerStatefulWidget',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 0.1 * height,
            ),
            Center(child: Text(thisname, style: TextStyle(fontSize: 24))),
            Center(child: Text(thisschool, style: TextStyle(fontSize: 24))),
            SizedBox(
              height: 0.1 * height,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    thisname = ref.read(nameprovider);
                    thisschool = ref.read(schoolprovider);
                  });
                },
                child: Text('fetch'),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Consumer(builder: (context, ref, child) {
                  return ElevatedButton(
                      onPressed: () {
                        if (shower == false) {
                          print('shower is false rn');
                          print('value of provider: $shower');
                          ref.watch(boolprovider.notifier).state = true;
                        } else {
                          print('shower is true rn');
                          print('value of provider: $shower');
                          ref.watch(boolprovider.notifier).state = false;
                        }
                      },
                      child: Center(
                          child: shower
                              ? Text('close source code')
                              : Text('view source code')));
                })),
            Consumer(builder: (context, ref, child) {
              return Container(
                child: shower
                    ? Container(
                        height: 0.8 * height,
                        width: width,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [showcode2()],
                                ),
                              ),
                            ],
                          ),
                        ))
                    : Text(''),
              );
            })
          ],
        ),
      ),
    );
  }
}

Widget showcode2() {
  return const Text("""

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtut/riverpodstate.dart';

class Screen2 extends ConsumerStatefulWidget {
  Screen2({super.key});

  final route = MaterialPageRoute(builder: (context) => Screen2());

  @override
  ConsumerState<Screen2> createState() => _Screen2State();
}

class _Screen2State extends ConsumerState<Screen2> {
  String thisname = 'press button';
  String thisschool = 'to fetching data';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    bool shower = ref.watch(boolprovider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 0.1 * height,
          ),
          Center(child: Text(thisname, style: TextStyle(fontSize: 24))),
          Center(child: Text(thisschool, style: TextStyle(fontSize: 24))),
          SizedBox(
            height: 0.1 * height,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  thisname = ref.read(nameprovider);
                  thisschool = ref.read(schoolprovider);
                });
              },
              child: Text('fetch'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Consumer(builder: (context, ref, child) {
                return ElevatedButton(
                    onPressed: () {
                      if (shower == false) {
                        print('shower is false rn');
                          //i can't use dollar sign because of compile time error
                          //the shower is basically dollarsign and sign
                          //without space
                        print('value of provider: shower');
                        ref.watch(boolprovider.notifier).state = true;
                      } else {
                        print('shower is true rn');
                          //i can't use dollar sign because of compile time error
                          //the shower is basically dollarsign and sign
                          //without space
                        print('value of provider: shower');
                        ref.watch(boolprovider.notifier).state = false;
                      }
                    },
                    child: Center(
                        child: shower
                            ? Text('close source code')
                            : Text('view source code')));
              })),
          Consumer(builder: (context, ref, child) {
            return Container(
              child: shower
                  ? Container(
                      height: 0.8 * height,
                      width: width,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [showcode2()],
                              ),
                            ),
                          ],
                        ),
                      ))
                  : Text(''),
            );
          })
        ],
      ),
    );
  }
}
//this is my riverpod file 
import 'package:flutter_riverpod/flutter_riverpod.dart';

final count = StateProvider((ref) => 0);

//name provider

final nameprovider = StateProvider((ref) => '');

// school provider

final schoolprovider = StateProvider((ref) => '');

// bool value to show the codes

final boolprovider = StateProvider((ref) => false);


//this is a perfect example of consumerstatefulwidget 


  """);
}
