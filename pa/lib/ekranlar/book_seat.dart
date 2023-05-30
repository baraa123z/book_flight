import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pa/widgets/bottun.dart';

class ChooseSeat extends StatefulWidget {
  ChooseSeat({Key? key}) : super(key: key);

  @override
  State<ChooseSeat> createState() => _ChooseSeatState();
}

class _ChooseSeatState extends State<ChooseSeat> {
  // var isBooked
  var countSeatLeft = 3 * 10;
  var countSeatCenter = 6 * 32;
  var countSeatRight = 3 * 10;
  var listSeatLeft = [];
  var listSeatCenter = [];
  var listSeatRight = [];

  @override
  void initState() {
    initSeatValueToList(listSeatLeft, countSeatLeft, "l");
    initSeatValueToList(listSeatCenter, countSeatCenter, "c");
    initSeatValueToList(listSeatRight, countSeatRight, "r");
    setVisiblitySeat();
    super.initState();
  }

  initSeatValueToList(List data, count, side) {
    var objectData;
    for (int i = 0; i < count; i++) {
      objectData = {
        "id": side + "${i + 1}",
        "isBooked": false,
        "isAvailable": true,
        "isSelected": false,
        "isVisible": true,
      };
      //this format object for every seat has
      setState(() {
        data.add(objectData);
        //add object to list
      });
    }
    print(data);
  }

  setVisiblitySeat() {
    setState(() {
      listSeatCenter[2]["isVisible"] = false;
      listSeatCenter[8]["isVisible"] = false;
      listSeatCenter[14]["isVisible"] = false;
      listSeatCenter[20]["isVisible"] = false;
      listSeatCenter[26]["isVisible"] = false;
      listSeatCenter[32]["isVisible"] = false;
      listSeatCenter[38]["isVisible"] = false;
      listSeatCenter[44]["isVisible"] = false;
      listSeatCenter[50]["isVisible"] = false;
      listSeatCenter[56]["isVisible"] = false;
      listSeatCenter[62]["isVisible"] = false;
      listSeatCenter[68]["isVisible"] = false;
    });
    //this function to set where's the position of the seat that should be invisible
  }

  setSelectedToBooked() {
    listSeatLeft.forEach((seat) {
      if (seat["isSelected"]) {
        setState(() {
          seat["isBooked"] = true;
        });
      }
    });
    listSeatCenter.forEach((seat) {
      if (seat["isSelected"]) {
        setState(() {
          seat["isBooked"] = true;
        });
      }
    });
    listSeatRight.forEach((seat) {
      if (seat["isSelected"]) {
        setState(() {
          seat["isBooked"] = true;
        });
      }
    });
    //this function to loop every side of seat, from selected to booked, u also can this function to send to u'r serves side
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 231, 231),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Color.fromARGB(255, 241, 231, 231),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text("Screen"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Booked",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Selected"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("available"),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                // height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: widgetSeat(listSeatCenter, true),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: bot(size: size, txt_b: 'Booking'))
            ],
          ),
        ),
      ),
    );
  }

  Widget widgetSeat(List dataSeat, bool isCenter) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width / 3.93,
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isCenter ? 6 : 3,
            childAspectRatio: isCenter ? 1 : 1,
          ),
          itemCount: dataSeat.length,
          itemBuilder: (BuildContext context, int index) {
            return Visibility(
              visible: dataSeat[index]["isVisible"],
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    dataSeat[index]["isSelected"] =
                        !dataSeat[index]["isSelected"];
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: dataSeat[index]["isBooked"]
                        ? Colors.grey
                        : dataSeat[index]["isSelected"]
                            ? Colors.white
                            : Colors.transparent,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
