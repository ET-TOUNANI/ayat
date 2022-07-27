import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../configs/GetButtonNavigatBar.config.dart';
import '../configs/configs.dart';

class Hijri extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<Hijri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: const Color(0xff003D34),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              getFront('d'),
              Divider(height: 50,),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.black38,
                    child: SfHijriDateRangePicker(
                      rangeTextStyle: TextStyle(color: const Color(0xffFFE29D)),
                      view: HijriDatePickerView.month,
                      showNavigationArrow: true,

                      selectionColor: Colors.indigoAccent,
                      monthViewSettings: HijriDatePickerMonthViewSettings(
                          dayFormat: 'EEE',
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                              backgroundColor: Colors.tealAccent)),
                      headerStyle:
                          DateRangePickerHeaderStyle(textAlign: TextAlign.center,textStyle: TextStyle(color: Colors.white,fontSize: 20),backgroundColor: Colors.teal),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }
}
