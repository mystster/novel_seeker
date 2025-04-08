import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// This file does not exist yet,
// it will be generated in the next step
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // The [directories] variable does not exist yet,
      // it will be generaed in the next step
      directories: directories,
      addons: [
        ViewportAddon([Viewports.none, ...AndroidViewports.all]),
        // DeviceFrameAddon(
        //   devices: [
        //     Devices.android.mediumPhone,
        //     Devices.android.bigPhone,
        //     Devices.android.mediumTablet,
        //   ],
        //   initialDevice: Devices.android.bigPhone,
        // ),
        GridAddon(10),
        AlignmentAddon(),
        InspectorAddon(),
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(name: 'Light', data: ThemeData.light()),
            WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
          ],
        ),
        ZoomAddon(initialZoom: 1.0),
      ],
    );
  }
}
