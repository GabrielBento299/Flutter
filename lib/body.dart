import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.grey,
        Colors.blue,
      ])),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.2 - 27,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.red],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    )),
              ),
              Container(
                alignment: Alignment.center,
                child: Positioned(
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 20, right: 50, left: 50),
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.white, Colors.white],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                            ),
                            labelText: 'Pesquisar',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.green,
                            )),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
