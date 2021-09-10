import 'package:enclaps_redesign/config/color.dart';
import 'package:enclaps_redesign/config/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget paymentType() {
  return Container(
    decoration: BoxDecoration(
      color: kcPaymentTile.withOpacity(.5),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: ListTile(
      contentPadding: EdgeInsets.all(18),
      leading: SvgPicture.asset('assets/icons/payment_icon.svg'),
      title: Text(
        'Online payment',
        style: ktBody1.copyWith(color: kcPaymentTitle),
      ),
      trailing: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: kcWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Icon(
          Icons.arrow_forward_outlined,
          color: kcDarkGreen,
          size: 20,
        ),
      ),
    ),
  );
}
