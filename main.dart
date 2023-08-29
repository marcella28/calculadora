import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String _input = '';
  String _result = '';

  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == '=') {
        try {
          final parser = Parser();
          final expression = parser.parse(_input);
          final result = expression.evaluate(EvaluationType.REAL, ContextModel());
          _result = result.toString();
          _input = _result; // Update the input field with the result
        } catch (e) {
          _result = 'Error';
        }
      } else if (buttonText == 'apagar') {
        _input = '';
        _result = '';
      } else {
        _input += buttonText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
          title: Text(
            'Calculadora',
            style: TextStyle(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                    ],
                  ),
                  Container(
                    width: 184,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                    child: Center(
                      child: Text(
                        _input,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('7'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('8'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('9'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('apagar', height: 96),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('4'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('5'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('6'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('+', height: 80),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('1'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('2'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('3'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('-', height: 80),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('0'),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton(','),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  _buildCalcButton('='),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalcButton(String text, {double? width, double? height}) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        elevation: 3,
        color: (text == '=' || text == 'apagar')
            ? (text == '=' ? Colors.purple : Colors.teal)
            : Colors.blue,
        child: InkWell(
          onTap: () => _onButtonPressed(text),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePageWidget(),
  ));
}
