import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatefulWidget {
  final void Function(DateTime) onDaySelected;
  const CustomCalendar({super.key, required this.onDaySelected});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = focusedDay;
    });
    widget.onDaySelected(selectedDay);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TableCalendar(
        locale: 'ru',
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: focusedDay,
        daysOfWeekVisible: true,
        selectedDayPredicate: (day) => isSameDay(day, selectedDay),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: AppStyles.textStyle20.copyWith(
            color: AppColors.kColor10,
          ),
          weekendStyle: AppStyles.textStyle20.copyWith(
            color: AppColors.kColor10,
          ),
        ),
        shouldFillViewport: true,
        daysOfWeekHeight: 50.h,
        headerStyle: HeaderStyle(
          formatButtonShowsNext: false,
          formatButtonVisible: false,
          leftChevronVisible: false,
          rightChevronVisible: false,
          titleCentered: true,
          titleTextStyle: AppStyles.textStyle20.copyWith(
            color: AppColors.kColor10,
          ),
          titleTextFormatter: (date, locale) =>
              DateFormat.yMMMM('ru').format(date),
        ),
        onDaySelected: _onDaySelected,
        calendarFormat: CalendarFormat.month,
        calendarStyle: CalendarStyle(
          isTodayHighlighted: selectedDay == DateTime.now(),
          defaultTextStyle: TextStyle(
            color: AppColors.kColor4,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
          selectedTextStyle: TextStyle(
            color: const Color(0xff282828),
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
          selectedDecoration: const BoxDecoration(
            color: AppColors.kColor2,
            shape: BoxShape.circle,
          ),
          todayDecoration: const BoxDecoration(
            color: Color(0xff1D41F9),
            shape: BoxShape.circle,
          ),
          defaultDecoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          weekendDecoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
