import 'package:flutter/material.dart';

class TempratureConverter extends StatefulWidget {
  const TempratureConverter({super.key});
// InputDecoration getDecoration(String hint) {
//     return InputDecoration(
//       border: cBorder,
//       enabledBorder: cBorder,
//       filled: true,
//       fillColor: const Color(0xfff5f6fa),
//       hintText: hint,
//     );
//   }
  @override
  State<TempratureConverter> createState() => _TempratureConverterState();
}

class _TempratureConverterState extends State<TempratureConverter> {
  Widget getTextField({
    required String hint,
  }) {
    return TextField(
      // obscureText: true,

      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: Color.fromARGB(255, 7, 74, 129), width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue, width: 0)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          filled: true,
          fillColor: const Color(0xfff5f6fa),
          hintText: hint,
          hintStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 130, 153, 158),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(padding: const EdgeInsets.only(left: 10)),
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: SizedBox(
                width: 315,
                height: 50,
                child: getTextField(hint: "Enter Temprature here")),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text("Type the temperature in Celsius"),
          const SizedBox(height: 15),
          const Text("98.6 °Fahrenheit"),
          const SizedBox(
            height: 40,
          ),
          // getTextField(hint: "hint"),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: SizedBox(
              width: 327,
              height: 56,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  fixedSize: const Size(372, 56),
                  backgroundColor: (const Color(0xff146C94)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
