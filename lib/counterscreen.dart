import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtut/riverpodstate.dart';

class CounterScreen extends ConsumerWidget {
  CounterScreen({super.key});

  final route = MaterialPageRoute(builder: (context) => CounterScreen());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    final num = ref.watch(count);
    bool shower = ref.watch(boolprovider);
    return Scaffold(
      appBar: AppBar(
        title: Text('counter'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ref.read(count.notifier).state = 0;
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.2 * height,
            ),
            Text(
              num.toString(),
              style: TextStyle(fontSize: 40),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      ref.read(count.notifier).state--;
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 154, 186, 241),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      ref.read(count.notifier).state++;
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 154, 186, 241),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
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
                                  children: [showcode3()],
                                ),
                              ),
                            ],
                          ),
                        ))
                    : Text(''),
              );
            })
          ],
        )),
      ),
    );
  }
}

Widget showcode3() {
  return const Text("""
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtut/riverpodstate.dart';

class CounterScreen extends ConsumerWidget {
  CounterScreen({super.key});

  final route = MaterialPageRoute(builder: (context) => CounterScreen());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    final num = ref.watch(count);
    bool shower = ref.watch(boolprovider);
    return Scaffold(
      appBar: AppBar(
        title: Text('counter'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ref.read(count.notifier).state = 0;
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 0.2 * height,
          ),
          Text(
            num.toString(),
            style: TextStyle(fontSize: 40),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    ref.read(count.notifier).state--;
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 154, 186, 241),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ref.read(count.notifier).state++;
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 154, 186, 241),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
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
                                children: [showcode3()],
                              ),
                            ),
                          ],
                        ),
                      ))
                  : Text(''),
            );
          })
        ],
      )),
    );
  }
}





""");
}
