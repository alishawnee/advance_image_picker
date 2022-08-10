import 'package:flutter/material.dart';

import '../configs/translate_config.dart';

/// A custom dialog to show a confirmation message with optional boolean return
/// that will be returned if the [onConfirm] and [onDeny] are null.
///
Future<bool?> showConfirmDialog({
  required BuildContext context,
  required String title,
  required String content,
  required TranslationConfigs transConfig,
  bool Function()? onConfirm,
  bool Function()? onDeny,
}) {
  final dialogButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  return showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          style: dialogButtonStyle,
          onPressed: onDeny ?? () => Navigator.of(context).pop(false),
          child: Text(transConfig.textNo),
        ),
        TextButton(
          style: dialogButtonStyle,
          onPressed: onConfirm ?? () => Navigator.of(context).pop(true),
          child: Text(transConfig.textYes),
        ),
      ],
    ),
  );
}
