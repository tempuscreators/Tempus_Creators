import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? storageUrl(String? url) {
  String baseUrl =
      'https://firebasestorage.googleapis.com/v0/b/neomart-pro.appspot.com/o/';
  // convert slashesh to %2F
  if (url == null) return null;

  return baseUrl + url.replaceAll('/', '%2F') + '?alt=media';
}

int? slNum(int? index) {
  // return index plus 1 to get serial
  if (index == null) {
    return null;
  } else {
    return index + 1;
  }
}

int? netSales(List<int>? value) {
  // sum of list values
  if (value == null || value.isEmpty) {
    return null;
  }
  int sum = 0;
  for (int i = 0; i < value.length; i++) {
    sum += value[i];
  }
  return sum;
}

String? orderID() {
  // return currenttimestamp, random 3 digit and add 'OD' at the beggining
  String currentTimestamp = DateTime.now().millisecondsSinceEpoch.toString();
  String randomThreeDigit =
      math.Random().nextInt(1000).toString().padLeft(3, '0');
  return 'OD$currentTimestamp$randomThreeDigit';
}

List<dynamic>? topCategory(
  List<int>? productSold,
  List<String>? productCategory,
) {
  // return total sales by product category
  if (productSold == null || productCategory == null) {
    return null;
  }

  final Map<String, int> categorySales = {};

  for (int i = 0; i < productSold.length; i++) {
    final category = productCategory[i];
    final sales = productSold[i];
    categorySales.update(category, (value) => value + sales,
        ifAbsent: () => sales);
  }

  final sortedCategories = categorySales.keys.toList()
    ..sort((a, b) => categorySales[b]!.compareTo(categorySales[a]!));

  final List<dynamic> result = [];

  for (final category in sortedCategories) {
    result.add({'category': category, 'sales': categorySales[category]});
  }

  return result;
}

List<double>? totalSales(
  List<DateTime>? date,
  List<double>? orderValue,
) {
  // categorise total order value by dates and return total and divide that dates total by 1000
  if (date == null ||
      orderValue == null ||
      date.isEmpty ||
      orderValue.isEmpty) {
    return null;
  }

  final Map<DateTime, double> salesByDate = {};

  for (int i = 0; i < date.length; i++) {
    final DateTime currentDate = date[i];
    final double currentOrderValue = orderValue[i];

    final DateTime truncatedDate = DateTime.utc(
      currentDate.year,
      currentDate.month,
      currentDate.day,
    );

    if (salesByDate.containsKey(truncatedDate)) {
      salesByDate[truncatedDate] =
          salesByDate[truncatedDate]! + currentOrderValue;
    } else {
      salesByDate[truncatedDate] = currentOrderValue;
    }
  }

  final List<double> totalSalesByDate = [];

  for (final double sales in salesByDate.values) {
    totalSalesByDate.add(sales);
  }

  final double totalSales = totalSalesByDate.fold(0, (a, b) => a + b);

  final List<double> dividedSalesByDate = [];

  for (final double sales in totalSalesByDate) {
    dividedSalesByDate.add(sales / 1000);
  }

  return dividedSalesByDate;
}

List<dynamic>? totalSalesValue(
  List<DateTime>? date,
  List<double>? orderValue,
) {
  // categorise total order value by dates and return total and divide that dates total by 1000 and dates
  if (date == null ||
      orderValue == null ||
      date.isEmpty ||
      orderValue.isEmpty) {
    return null;
  }

  final Map<String, double> salesByDate = {};
  double totalSales = 0.0;

  for (int i = 0; i < date.length; i++) {
    final String formattedDate = DateFormat('dd MMM').format(date[i]);
    if (salesByDate.containsKey(formattedDate)) {
      salesByDate[formattedDate] = salesByDate[formattedDate]! + orderValue[i];
    } else {
      salesByDate[formattedDate] = orderValue[i];
    }
    totalSales += orderValue[i];
  }

  final List<dynamic> result = [];
  for (final String key in salesByDate.keys) {
    final double sales = salesByDate[key]!;
    final double salesInThousands = sales / 1000;
    result.add({
      'date': key,
      'total': sales,
      'totalInThousands': salesInThousands,
    });
  }

  return result;
}

DateTime? timeStampRange(int? days) {
  // subtract days to current timesatmp
  if (days == null) return null;
  final now = DateTime.now();
  final duration = Duration(days: days);
  final timeStamp = now.subtract(duration).millisecondsSinceEpoch;
  return DateTime.fromMillisecondsSinceEpoch(timeStamp);
}

double? averageRating(
  List<double>? ratings,
  int? totalRatings,
) {
  if (ratings == null || totalRatings == null || totalRatings == 0) {
    return null;
  }
  double sum = 0.0;
  for (double rating in ratings) {
    sum += rating;
  }
  return sum / totalRatings;
}

double? netAmount(List<double>? value) {
  // sum of list values
  if (value == null || value.isEmpty) {
    return null;
  }
  double sum = 0;
  for (double val in value) {
    sum += val;
  }
  return sum;
}

List<dynamic>? totalOrdersByDate(List<DateTime>? date) {
  // filter same dates and return count of those same dates and categorise by dates
  if (date == null || date.isEmpty) {
    return null;
  }

  final dateFormat = DateFormat('yyyy-MM-dd');
  final Map<String, int> dateCounts = {};

  for (final dateTime in date) {
    final dateString = dateFormat.format(dateTime);
    if (dateCounts.containsKey(dateString)) {
      dateCounts[dateString] = dateCounts[dateString]! + 1;
    } else {
      dateCounts[dateString] = 1;
    }
  }

  final List<dynamic> result = [];

  for (final dateString in dateCounts.keys) {
    final date = dateFormat.parse(dateString);
    final count = dateCounts[dateString];
    result.add({
      'date': date,
      'count': count,
    });
  }

  result.sort((a, b) => a['date'].compareTo(b['date']));

  return result;
}

double? calculatePercentage(
  int? total,
  int? value,
) {
  // calculate percentage and return value
  if (total == null || value == null || total == 0) {
    return null;
  }
  return (value / total) * 100;
}

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
// If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}
