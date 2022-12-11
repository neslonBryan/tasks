import 'package:flutter/material.dart';

import '../general/colors.dart';

Widget divider3() => const SizedBox(height: 3);
Widget divider6() => const SizedBox(height: 6);
Widget divider10() => const SizedBox(height: 10);
Widget divider20() => const SizedBox(height: 20);
Widget divider30() => const SizedBox(height: 30);
Widget divider40() => const SizedBox(height: 40);

Widget divider3Width() => const SizedBox(width: 3);
Widget divider6Width() => const SizedBox(width: 6);
Widget divider10Width() => const SizedBox(width: 10);
Widget divider20Width() => const SizedBox(width: 20);

Widget loadingWidget() => Center(
      child: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          color: KBrandPrimaryColor,
          strokeWidth: 2.2,
        ),
      ),
    );
