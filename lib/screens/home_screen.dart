import 'package:flutter/material.dart';


  class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(105, 205, 255, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Прогноз погоды',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w700, color: Colors.white),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(

                contentPadding: const EdgeInsets.all(0),
                hintStyle: const TextStyle(fontSize: 12),
                hintText: 'Город',
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          ElevatedButton(
style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
    )
), backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromRGBO(0, 92, 138, 1))),
            onPressed: () {},
            child: const Text('Узнать погоду', ),
          )
        ],
      ),
    );
  }
}
