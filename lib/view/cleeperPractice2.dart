import 'package:flutter/material.dart';
class CleeperPractice2 extends StatefulWidget {
  const CleeperPractice2({super.key});

  @override
  State<CleeperPractice2> createState() => _CleeperPractice2State();
}


class _CleeperPractice2State extends State<CleeperPractice2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            IconButton(
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Center(
                        child: SingleChildScrollView(
                          // physics: physics,
                          child: Dialog(
                            backgroundColor: Colors.transparent,
                            child: GestureDetector(
                              onTap: () {},
                              child: Stack(
                                alignment: Alignment.topCenter,
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    top: -20,
                                    child: Container(
                                      height: 39,
                                      width: 39,
                                      margin: const EdgeInsets.only(
                                        bottom: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(22),
                                      ),
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Icon(Icons.close)),
                                    ),
                                  ),
                                  ClipPath(
                                    clipper: CustomClipperCut(),
                                    child: ScrollbarTheme(
                                      data: const ScrollbarThemeData(
                                        minThumbLength: 0,
                                        crossAxisMargin: 2,
                                        mainAxisMargin: 40,
                                        // thumbColor: MaterialStateProperty.all(
                                        //     AppColors.color0763C6EXLT
                                        //         .withOpacity(0.5))
                                      ),
                                      child: Scrollbar(
                                        // controller: scrollController,
                                        thumbVisibility: true,
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxHeight: double.infinity,
                                            maxWidth: size.width * 0.6,
                                          ),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(22)),
                                          ),
                                          padding: EdgeInsets.only(
                                              top: size.height * 0.02,
                                              left: size.width * 0.02,
                                              right: size.width * 0.02,
                                              bottom: size.height * 0.02),
                                          child: const Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 25,),
                                                Text('hlw hlw hlw hlw hlw hlw hlw hlw',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),

                                              ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                icon: Icon(Icons.add)
            )
          ],
        ),
      ),
    );
  }
}


class CustomClipperCut extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    Offset cutoutEndOffset = Offset((size.width / 2) + (51 / 2), 0.0);
    path.lineTo(cutoutEndOffset.dx, cutoutEndOffset.dy);
    // var firstEnd = Offset(size.width / 2, size.height / 2);
    path.arcToPoint(Offset(cutoutEndOffset.dx - 51, 0),
        radius: const Radius.circular(10));
    path.close();
    return path;
  }


  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

