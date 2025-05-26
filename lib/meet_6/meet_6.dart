import 'package:flutter/material.dart';

class MeetEnam extends StatefulWidget {
  const MeetEnam({super.key});

  @override
  State<MeetEnam> createState() => _MeetEnamState();
}

class _MeetEnamState extends State<MeetEnam> {
  bool viewPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: 400,
              height: 289,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    // ignore: deprecated_member_use
                    Colors.black.withOpacity(0.4),
                    BlendMode.darken,
                  ),
                  image: AssetImage('assets/images/ppkd.jpg'),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: SizedBox(
                  child: Column(
                    children: [
                      Text(
                        'Hallo!',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Please login to get full access from us',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xB3ffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Container(
                alignment: Alignment.topLeft,
                color: Colors.black,
                height: 180,
                width: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Color(0xffffffff),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Color(0x66ffffff)),
                            hintText: 'Alfarezhi Mohamad Rasidan',
                            filled: true,
                            fillColor: Color(0x4D575757),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.elliptical(4, 4),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.elliptical(4, 4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(color: Color(0xffffffff)),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: !viewPassword,
                            cursorColor: Color(0xffffffff),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Color(0x66ffffff)),
                              hintText: '•••••••••••••',
                              filled: true,
                              fillColor: Color(0x4D575757),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(4, 4),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(4, 4),
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    viewPassword = !viewPassword;
                                  });
                                },
                                icon: Icon(
                                  viewPassword
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  color: Color(0xffC4C4C4),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            buildLoginButton(),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 35),
                Image.asset("assets/images/garisKiri.png"),
                SizedBox(width: 10),
                Text('Or continue with', style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Image.asset("assets/images/garisKanan.png"),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 32),
                Container(
                  height: 48,
                  width: 88,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff111111),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.elliptical(10, 10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Image.asset('assets/images/google.png'),
                  ),
                ),
                SizedBox(width: 34),
                Container(
                  height: 48,
                  width: 88,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff111111),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.elliptical(10, 10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Image.asset('assets/images/apple.png'),
                  ),
                ),
                SizedBox(width: 34),
                Container(
                  height: 48,
                  width: 88,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff111111),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.elliptical(10, 10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Image.asset('assets/images/twitter.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildLoginButton() {
    return Container(
      width: 330,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff7D00D0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
          ),
        ),
        child: Text('Login', style: TextStyle(color: Color(0xffffffff))),
      ),
    );
  }
}
