import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String generateWhatsAppUrl(String phone) {
  phone = phone.replaceAll("+", "").trim();
  return "https://api.whatsapp.com/send?phone=" + phone;
}

bool isCustomerAbleChatGroomer(OrdersRecord order) {
  if (order.status == "OnTheWay" || order.status == "Working") {
    return true;
  }
  return false;
}

bool isOrderPayable(OrdersRecord order) {
  // Add your function code here!
  if ((order.status == "Working" || order.status == "Finish") &&
      order.paymentStatus == "Unpaid") {
    return true;
  }

  return false;
}
