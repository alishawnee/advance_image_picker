import 'dart:core';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../models/image_object.dart';
import '../widgets/editors/editor_params.dart';
import 'done_button_style.dart';
import 'image_quality_config.dart';
import 'translate_config.dart';

export 'package:camera/camera.dart' show FlashMode;

/// Global configuration for flutter app using advance_image_picker plugin
/// Call once inside application before using image picker functions
///
/// Sample usage
/// Calling in build function of app widget at main.dart
/// ```dart
/// var configs = ImagePickerConfigs();
/// configs.appBarTextColor = Colors.black;
/// configs.translateFunc = (name, value) => Intl.message(value, name: name);
/// ```
class ImagePickerConfigs {
  /// The default constructor is a factory that returns the configuration
  /// singleton of the picker configuration.
  ///
  /// Global configuration for flutter app using advance_image_picker plugin
  /// Call once inside application before using image picker functions
  ///
  /// Sample usage
  /// Calling in build function of app widget at main.dart
  /// ```dart
  /// var configs = ImagePickerConfigs();
  /// configs.appBarTextColor = Colors.black;
  /// configs.translateFunc = (name, value) => Intl.message(value, name: name);
  /// ```
  factory ImagePickerConfigs() {
    return _singleton;
  }
  ImagePickerConfigs._internal();

  /// Singleton object for holding the image picker configuration settings.
  static final ImagePickerConfigs _singleton = ImagePickerConfigs._internal();

  /// Grid count for photo album grid view.
  ///
  /// Defaults to 4.
  int albumGridCount = 4;

  /// Thumbnail image width.
  ///
  /// Defaults to 80.
  int thumbWidth = 80;

  /// Thumbnail image height.
  ///
  /// Defaults to 80.
  int thumbHeight = 80;

  /// Thumbnail image width inside album grid view.
  ///
  /// Defaults to 200.
  int albumThumbWidth = 200;

  /// Thumbnail image height inside album grid view.
  ///
  /// Defaults to 200.
  int albumThumbHeight = 200;

  /// To config the image quality and compression rates
  ImageQualityConfigs imageConfigs = ImageQualityConfigs();

  /// Enable this option to allow image pre-processing, such as cropping,
  /// after editing.
  ///
  /// Defaults to true.
  bool imagePreProcessingBeforeEditingEnabled = true;

  /// Show delete button on selected list.
  ///
  /// Defaults to true.
  bool showDeleteButtonOnSelectedList = true;

  /// Show confirm alert if removing an already selected image.
  ///
  /// Defaults to true.
  bool showRemoveImageAlert = true;

  /// Show confirm alert if exiting with selected image.
  ///
  /// Defaults to true.
  bool showNonSelectedAlert = true;

  /// Enable image crop/rotation/scale function.
  ///
  /// Defaults to true.
  bool cropFeatureEnabled = true;

  /// Enable image filter function.
  ///
  /// Defaults to true.
  bool filterFeatureEnabled = true;

  /// Enable image adjusting function.
  ///
  /// Defaults to true.
  bool adjustFeatureEnabled = true;

  /// Enable sticker adding function.
  ///
  /// Defaults to true.
  bool stickerFeatureEnabled = true;

  // Picker mode settings.

  /// Enable camera as image source.
  ///
  /// Defaults to true.
  bool cameraPickerModeEnabled = true;

  /// Enable device image album as image source.
  ///
  /// Defaults to true.
  bool albumPickerModeEnabled = true;

  /// Detect labels from image function
  Future<List<DetectObject>> Function(String path)? labelDetectFunc;

  /// Max count for label detection
  int labelDetectMaxCount = 5;

  /// Threshold for label detection
  double labelDetectThreshold = 0.7;

  /// Detect OCR from image function
  Future<String> Function(String path, {bool? isCloudService})? ocrExtractFunc;

  /// Custom sticker only flag
  ///
  /// Defaults to false.
  bool customStickerOnly = false;

  /// Custom sticker paths
  List<String> customStickers = [];

  /// Camera direction setting.
  ///
  /// Options:
  ///
  /// * null: use all available camera (default)
  /// * 0: only use front camera
  /// * 1: only use back camera
  int? cameraLensDirection;

  /// Show the lens direction toggle icon button.
  ///
  /// If you want to show only one camera, you may also want to hide the
  /// button than enables users switch camera, then set [showLensDirection]
  /// to false.
  ///
  /// If you show just one [cameraLensDirection] and [showLensDirection] is
  /// true, then the lens direction button is still shown, but disabled.
  ///
  /// Defaults to true.
  bool showLensDirection = true;

  /// Set the default flash mode.
  ///
  /// Options:
  /// * off: Do not use the flash when taking a picture.
  /// * auto: Device decide whether to flash the camera when taking a picture.
  /// * always: Always use the flash when taking a picture.
  /// * torch: In this app treated the same as using always.
  ///
  /// Defaults to [FlashMode.auto].
  FlashMode flashMode = FlashMode.auto;

  /// Show the flash mode icon button.
  ///
  /// If you want to set the FlashMode to a certain mode, typically
  /// [FlashMode.off], and also hide the button than enables users to
  /// change it, then set [showFlashMode] to false.
  ///
  /// Defaults to true.
  bool showFlashMode = true;

  // UI style settings.

  /// Background color of the camera and image picker.
  ///
  /// Defaults to [Colors.black].
  Color backgroundColor = Colors.black;

  /// Background color of the bottom section of the camera.
  ///
  /// Defaults to [Colors.black].
  Color bottomPanelColor = Colors.black;

  /// Background color of the bottom section of the camera when it is used
  /// in full screen mode.
  ///
  /// Defaults to [Colors.black] with 30% opacity.
  Color bottomPanelColorInFullscreen = Colors.black.withOpacity(0.3);

  /// The background color of the [AppBar] in the image picker.
  ///
  /// Defaults to null.
  /// This results in an AppBar background color that follows current theme.
  Color? appBarBackgroundColor;

  /// The text or foreground color of the [AppBar] in the image picker.
  ///
  /// Defaults to null.
  /// This results in an AppBar text color that follows current theme.
  Color? appBarTextColor;

  /// The type of button used on the image picker to select images and close
  /// the image picker.
  ///
  /// The default is [DoneButtonStyle.outlinedButton].
  ///
  /// The alternate style [DoneButtonStyle.iconButton] uses an [IconButton] that
  /// is typically used in [AppBar] actions.
  DoneButtonStyle doneButtonStyle = DoneButtonStyle.outlinedButton();

  /// Allow add custom image editors from external call.
  ///
  /// Sample usage:
  ///
  /// configs.externalImageEditors['external_image_editor'] = EditorParams(
  ///   title: 'external_image_editor',
  ///   icon: Icons.wb_sunny_outlined,
  ///   onEditorEvent: (
  ///      {required File file,
  ///       required String title,
  ///       int maxWidth = 1080,
  ///       int maxHeight = 1920,
  ///       ImagePickerConfigs? configs}) async => await
  ///         Navigator.of(context).push(MaterialPageRoute<File>(
  ///       fullscreenDialog: true,
  ///       builder: (context) => ImageEdit(file: file, title: title,
  ///         maxWidth: maxWidth, maxHeight: maxHeight, configs: _configs)))
  Map<String, EditorParams> externalImageEditors = {};

  /// The translation Configuration of the messages used in the package
  late TranslationConfigs translations;
}
