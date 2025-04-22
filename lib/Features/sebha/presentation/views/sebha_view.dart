


import 'package:ayaty/Features/sebha/presentation/views/widgets/header_section.dart';
import 'package:ayaty/Features/sebha/presentation/views/widgets/reset_button.dart';
import 'package:ayaty/Features/sebha/presentation/views/widgets/sebha_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});
  static const String id = 'SebhaView';

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int counter = 0;
  String selectedValue = 'سبحان الله';
  List<String> options = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    'لا إله إلا الله',
    'استغفر الله',
    'اللهم صل على محمد',
    'سبحان الله وبحمده\n سبحان الله العظيم',
  ];

  @override
  void initState() {
    super.initState();
    _loadOptions();
  }
  Future<void> _loadOptions() async {
    final prefs = await SharedPreferences.getInstance();
    final storedOptions = prefs.getStringList('options');
    if (storedOptions != null) {
      setState(() => options = storedOptions);
    }
  }

  Future<void> _saveOptions() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('options', options);
  }

  void incrementCounter() => setState(() => counter++);

  void resetCounter() => setState(() => counter = 0);

  Future<void> _addNewOptionDialog() async {
    String? newOption;
    await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xffF6F1DE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        title: _buildDialogTitle(),
        content: _buildDialogContent((value) => newOption = value),
        actions: _buildDialogActions(newOption),
      ),
    );
  }

  Widget _buildDialogTitle() {
    return Text(
      'أضف ذكر جديد',
      style: GoogleFonts.cairoPlay(color: Colors.teal),
    );
  }

  Widget _buildDialogContent(ValueChanged<String> onChanged) {
    return TextField(
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.right,
      autofocus: true,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'اكتب الذكر هنا',
        hintStyle: const TextStyle(color: Colors.teal),
      ),
    );
  }

  List<Widget> _buildDialogActions(String? newOption) {
    return [
      TextButton(
        onPressed: () {
          if (newOption != null && newOption.trim().isNotEmpty) {
            setState(() => options.add(newOption.trim()));
            _saveOptions();
          }
          Navigator.of(context).pop();
        },
        child: Text(
          'إضافة',
          style: GoogleFonts.cairoPlay(color: Colors.teal),
        ),
      ),
      TextButton(
        onPressed: () => Navigator.of(context).pop(),
        child: Text(
          'إلغاء',
          style: GoogleFonts.cairoPlay(color: Colors.teal),
        ),
      ),
    ];
  }

  Future<void> _showPopupMenu() async {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(button.size.topRight(Offset.zero),
            ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero),
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    final selected = await showMenu<String>(
      context: context,
      position: position,
      color: Colors.teal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      items: [
        ...options.map((option) => PopupMenuItem<String>(
              value: option,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  option,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairoPlay(
                    color: Color(0xffF6F1DE),
                    fontSize: 22.sp,
                  ),
                ),
              ),
            )),
        const PopupMenuDivider(),
        PopupMenuItem<String>(
          value: 'add_new',
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.add, color: Color(0xffF6F1DE)),
                SizedBox(width: 8.w),
                Text(
                  'إضافة ذكر جديد',
                  style: GoogleFonts.cairoPlay(
                    color: Color(0xffF6F1DE),
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
        const PopupMenuDivider(),
      ],
    );

    if (selected != null && selected != 'add_new') {
      setState(() {
        selectedValue = selected;
        counter = 0;
      });
    } else if (selected == 'add_new') {
      await _addNewOptionDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F1DE),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50.h),
            HeaderSection(selectedValue: selectedValue, onPressed: _showPopupMenu),
            SizedBox(height: 60.h),
            SebhaCounter(counter: counter, incrementCounter: incrementCounter),
            ResetButton(resetCounter: resetCounter),
          ],
        ),
      ),
    );
  }
}
