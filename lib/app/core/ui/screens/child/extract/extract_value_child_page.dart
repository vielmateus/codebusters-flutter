import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/data/money/service/extract_item_service.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';

class ExtractValueChildPage extends StatefulWidget {
  const ExtractValueChildPage({super.key});

  @override
  State<ExtractValueChildPage> createState() => _ExtractValueCartPageState();
}

class _ExtractValueCartPageState extends State<ExtractValueChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottonNavigationBarIcon(),
      appBar: AppBar(
        title: const Text('Extrato'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/image_coins_two.png'),
                        Image.asset('assets/images/image_coins_one.png'),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset('assets/images/image_cipher.png'),
                          ],
                        ),
                        Text(
                          'Extrato',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: UiConfig.colorScheme.tertiary),
                        ),
                        Text(
                          'Consulte os valores depositados pelo seu responsável.',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: UiConfig.colorScheme.onTertiary),
                        ),
                        ButtonColorBright(label: 'MATEUS', onPressed: () => _buildDefaultSingleDatePickerWithValue,),
                        const SizedBox(
                          height: 16,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          color: UiConfig.colorScheme.primaryContainer,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Data',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Valor',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Saldo',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: ExtractItemService().getOneExtractItem(1),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                if (!snapshot.hasData) {
                  const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('19/08/2023'),
                          Text('asd'),
                          Text('R\$15,00'),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

ListView _listaDados() {
  var items = List<String>.generate(10000, (i) => 'Item $i');

  return ListView.builder(
    shrinkWrap: true,
    itemCount: items.length,
    prototypeItem: ListTile(
      title: Text(items.first),
    ),
    itemBuilder: (context, index) {
      return const ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('19/08/2023'),
            Text('R\$5,00'),
            Text('R\$15,00'),
          ],
        ),
      );
    },
  );
}



Widget _buildDefaultSingleDatePickerWithValue() {
  List<DateTime?> _singleDatePickerValueWithDefaultValue = [
    DateTime.now(),
  ];

  final config = CalendarDatePicker2Config(
    selectedDayHighlightColor: Colors.amber[900],
    weekdayLabels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    weekdayLabelTextStyle: const TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
    ),
    firstDayOfWeek: 1,
    controlsHeight: 50,
    controlsTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    dayTextStyle: const TextStyle(
      color: Colors.amber,
      fontWeight: FontWeight.bold,
    ),
    disabledDayTextStyle: const TextStyle(
      color: Colors.grey,
    ),
    selectableDayPredicate: (day) => !day
        .difference(DateTime.now().subtract(const Duration(days: 3)))
        .isNegative,
  );
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      const SizedBox(height: 10),
      const Text('Single Date Picker (With default value)'),
      CalendarDatePicker2(
        config: config,
        value: _singleDatePickerValueWithDefaultValue,
        onValueChanged: (dates) =>
            print(_singleDatePickerValueWithDefaultValue),
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Selection(s):  '),
          const SizedBox(width: 10),
          Text(
            _getValueText(
              config.calendarType,
              _singleDatePickerValueWithDefaultValue,
            ),
          ),
        ],
      ),
      const SizedBox(height: 25),
    ],
  );
}

String _getValueText(
  CalendarDatePicker2Type datePickerType,
  List<DateTime?> values,
) {
  values = values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
  var valueText = (values.isNotEmpty ? values[0] : null)
      .toString()
      .replaceAll('00:00:00.000', '');

  if (datePickerType == CalendarDatePicker2Type.multi) {
    valueText = values.isNotEmpty
        ? values
            .map((v) => v.toString().replaceAll('00:00:00.000', ''))
            .join(', ')
        : 'null';
  } else if (datePickerType == CalendarDatePicker2Type.range) {
    if (values.isNotEmpty) {
      final startDate = values[0].toString().replaceAll('00:00:00.000', '');
      final endDate = values.length > 1
          ? values[1].toString().replaceAll('00:00:00.000', '')
          : 'null';
      valueText = '$startDate to $endDate';
    } else {
      return 'null';
    }
  }

  return valueText;
}
