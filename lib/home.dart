import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _weightController = new TextEditingController();
  int radioValue = 0;
  double _finalResult = 0.0;
  String _formattedText = "";

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 1:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          _formattedText =
              "Your weight on Mercury is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 2:
          _finalResult = calculateWeight(_weightController.text, 0.91);
          _formattedText =
              "Your weight on Venus is ${_finalResult.toStringAsFixed(1)}";

          break;
        case 3:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          _formattedText =
              "Your weight on Mars is ${_finalResult.toStringAsFixed(1)}";

          break;
        case 4:
          _finalResult = calculateWeight(_weightController.text, 2.34);
          _formattedText =
              "Your weight on Jupitor is ${_finalResult.toStringAsFixed(1)}";

          break;
        case 5:
          _finalResult = calculateWeight(_weightController.text, 1.06);
          _formattedText =
              "Your weight on Saturn is ${_finalResult.toStringAsFixed(1)}";

          break;
        case 6:
          _finalResult = calculateWeight(_weightController.text, 0.92);
          _formattedText =
              "Your weight on Uranus is ${_finalResult.toStringAsFixed(1)}";

          break;
        case 7:
          _finalResult = calculateWeight(_weightController.text, 1.19);
          _formattedText =
              "Your weight on Neptune is ${_finalResult.toStringAsFixed(1)}";

          break;
        case 8:
          _finalResult = calculateWeight(_weightController.text, 0.06);
          _formattedText =
              "Your weight on Pluto is ${_finalResult.toStringAsFixed(1)}";

          break;
      }
    });
  }

  double calculateWeight(String weight, double multiplier) {
    if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplier;
    } else {
      print('Wrong!');
      return int.parse('180') * 0.38;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight On Planets'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                labelText: 'your weight on Earth',
                hintText: 'In kg',
                icon: Icon(Icons.person_outline),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                _weightController.text.isEmpty ? 'please enter weight':_formattedText + ' kgs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset('images/mercury.jpg'),
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 1,
                            activeColor: Colors.redAccent,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text('Mercury'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset('images/venus.jpg'),
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 2,
                            activeColor: Colors.redAccent,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text('Venus'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset('images/mars.jpg'),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 3,
                          activeColor: Colors.redAccent,
                          groupValue: radioValue,
                          onChanged: handleRadioValueChanged,
                        ),
                        Text('Mars'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset('images/jupitor.jpg'),
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 4,
                            activeColor: Colors.redAccent,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text('Jupitor'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset('images/saturn.jpg'),
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 5,
                            activeColor: Colors.redAccent,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text('Saturn'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset('images/uranus.jpg'),
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 6,
                            activeColor: Colors.redAccent,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text('Uranus'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset('images/neptune.jpg'),
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 7,
                            activeColor: Colors.redAccent,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text('Neptune'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset('images/pluto.jpg'),
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 8,
                            activeColor: Colors.redAccent,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text('Pluto'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
