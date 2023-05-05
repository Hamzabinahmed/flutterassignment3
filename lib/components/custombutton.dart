import 'package:flutter/material.dart';

//
// CUSTOM BUTTON
//
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onpressed,
    required this.text,
    required this.size,
    required this.weight,
  });

  final String text;
  final VoidCallback onpressed;
  final double size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 60,
      width: MediaQuery.of(context).size.width * 7,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.blue.shade700,
        ),
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: size, fontWeight: weight),
        ),
      ),
    );
  }
}

//
// CIRCLE AVATAR FOR TOP
//

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.radius,
  });
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
    
      backgroundImage: const AssetImage("assets/icons/profile.png"),
    );
  }
}

//
// CUSTOM CONTAINER FOR CONTINUE WITH
//
class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hinttext, this.suffixicon});

  final String hinttext;
  final Icon? suffixicon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hinttext,
        suffixIcon: suffixicon,
        border:  OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.grey.shade100,
        filled: true,
      ),
    );
  }
}
