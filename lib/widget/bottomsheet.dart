import 'package:flutter/material.dart';
class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
 int _selectedOption = -1; // Variable to track the selected option

  List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];
  double _startValue = 300.0;
  double _endValue = 150000.0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight*.6,
      
      decoration: BoxDecoration(borderRadius: BorderRadius.only( topLeft: Radius.circular(20.0), // Radius for top-left corner
        topRight: Radius.circular(20.0),),
      color: Color(0xff1C1C1C),),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
                    margin: EdgeInsets.only(left:10,top: 10),
                    child: Text("Filter by price",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    
                    ),),
                  ),
          SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Color(0xff3F3F3F),
                activeTickMarkColor: Color(0xff3F3F3F),
                secondaryActiveTrackColor: Color(0xff3F3F3F),
                thumbColor: Color(0xff3F3F3F),
                trackHeight: 2.0, // Adjust the track height here
              ),child:
           RangeSlider(
              values: RangeValues(_startValue, _endValue),
              min: 0.0,
              max: 2000000.0,
              divisions: 100,
              onChanged: (RangeValues values) {
                setState(() {
                  _startValue = values.start;
                  _endValue = values.end;
                });
              },
              labels: RangeLabels(
                _startValue.toString(),
                _endValue.toString(),
              ),
            ),),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                        margin: EdgeInsets.only(left:10,top: 5),
                        child: Text("Price: JOD 3005 - JOD 1500000",
                        style: TextStyle(
                            fontFamily: "Work Sans",
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        
                        ),),
                      ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 32,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
                  child: Center(
                    child: Text("Filter",
                            style: TextStyle(
                                fontFamily: "Work Sans",
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            
                            ),),
                  ),
                ),
              )

              ],
            ),
             Container(
                    margin: EdgeInsets.only(left:10,top: 10),
                    child: Text("Filter by price",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:10,top: 10),
                    child: Text("Filter by Digits",
                    style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    
                    ),),
                  ),
                 Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  String option = options[index];
                  return CheckboxListTile(
                    title: Text(option,style: TextStyle(
                        fontFamily: "Work Sans",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                    color: Colors.white
                    ),),
                    value: _selectedOption == index,
                    fillColor: MaterialStateProperty
                                                    .resolveWith<Color?>(
                                                  (Set<MaterialState> states) {
                                                    if (states.contains(
                                                        MaterialState
                                                            .selected)) {
                                                      return Colors
                                                          .white; // Color of the checkbox when checked
                                                    }
                                                    return Colors.grey.withOpacity(
                                                        0.4); // Color of the checkbox when unchecked
                                                  },
                                                ),
                                                activeColor: Colors
                                                    .white, // Color of the checkbox when checked
                                                checkColor: Colors.black,
                                              
                    onChanged: (bool? value) {
                      setState(() {
                        if (value != null && value) {
                          _selectedOption = index;
                        } else {
                          _selectedOption = -1; // Deselect if already selected
                        }
                      }
                      
                      );
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  );
                },
              ),
            ),
          
        ],
      ),
    );
  }
}
