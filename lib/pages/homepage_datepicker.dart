import 'package:flutter/material.dart';

class HomeScreenDatePicker extends StatefulWidget {
  const HomeScreenDatePicker({Key? key}) : super(key: key);

  @override
  State<HomeScreenDatePicker> createState() => _HomeScreenDatePickerState();
}

class _HomeScreenDatePickerState extends State<HomeScreenDatePicker> {
  DateTimeRange? _selectedDateRange;

  // This function will be triggered when the floating button is pressed
  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      currentDate: DateTime.now(),
      saveText: 'Done',
    );

    if (result != null) {
      // Rebuild the UI
      print('----------Run started--------------');
      print('The start date is : ');
      print(result.start.toString());
      print('The end date is : ');
      print(result.end.toString());
      print('----------Run end-----------------');
      setState(() {
        _selectedDateRange = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KindaCode.com')),
      body: _selectedDateRange == null
          ? const Center(
        child: Text('Press the button to show the picker'),
      )
          : Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Start date
            Text(
              "Start date: ${_selectedDateRange?.start.toString().split(' ')[0]}",
              style: const TextStyle(fontSize: 24, color: Colors.blue),
            ),
            const SizedBox(
              height: 20,
            ),
            // End date
            Text(
                "End date: ${_selectedDateRange?.end.toString().split(' ')[0]}",
                style: const TextStyle(fontSize: 24, color: Colors.red))
          ],
        ),
      ),
      // This button is used to show the date range picker
      floatingActionButton: FloatingActionButton(
        onPressed: _show,
        child: const Icon(Icons.date_range),
      ),
    );
  }
}