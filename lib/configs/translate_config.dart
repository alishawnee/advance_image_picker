/// Used to config all the translation messages of this package
/// UI labels translated configs that requires a function with
/// one argument `message` of type `IPMessage(Enum)`.
class TranslationConfigs {
  /// Used to config all the translation messages of this package
  TranslationConfigs(this.translateFunc);

  /// UI labels translated function with 2 parameters
  /// `label` and `defaultTranslation`
  ///
  /// Declare a `key` for what label
  /// needs to be translated in your localization file,
  /// such as select_images_title. All keys and their default translations
  /// are accessible through `IPMessage.label_name`
  ///
  /// Sample usage:
  ///
  /// If using Intl, define a function like this:
  ///
  /// `configs.translations.translateFunc = (label, defaultTranslation)
  ///  => Intl.message(defaultTranslation, name: label);`
  ///
  /// If using GetX, function like this:
  ///
  /// `configs.translations.translateFunc = (label, defaultTranslation)
  /// =>label.tr;`
  ///
  /// or you can just return the default translation like this:
  ///
  /// `configs.translations.translateFunc = (_, defaultTranslation)
  /// => defaultTranslation;`
  String Function(String label, String defaultTranslation) translateFunc;

  // UI label strings (for localization)

  /// Get localized text for label "image_picker_select_images_title".
  ///
  /// Defaults to "Selected images count".
  String get textSelectedImagesTitle =>
      getTranslatedString(IPMessage.selectImagesTitle);

  /// Get localized text for label "image_picker_select_images_guide".
  ///
  /// Defaults to "You can drag images for sorting list...".
  String get textSelectedImagesGuide =>
      getTranslatedString(IPMessage.selectImagesGuide);

  /// Get localized text for label "image_picker_camera_title".
  ///
  /// Defaults to "Camera".
  String get textCameraTitle => getTranslatedString(IPMessage.cameraTitle);

  /// Get localized text for label "image_picker_album_title".
  ///
  /// Defaults to "Album".
  String get textAlbumTitle => getTranslatedString(IPMessage.albumTitle);

  /// Get localized text for label "image_picker_preview_title".
  ///
  /// Defaults to "Preview".
  String get textPreviewTitle => getTranslatedString(IPMessage.previewTitle);

  /// Get localized text for label "image_picker_confirm".
  ///
  /// Defaults to "Confirm".
  String get textConfirm => getTranslatedString(IPMessage.confirm);

  /// Get localized text for label "image_picker_exit_without_selecting".
  ///
  /// Defaults to "Do you want to exit without selecting images?".
  String get textConfirmExitWithoutSelectingImages =>
      getTranslatedString(IPMessage.exitWithoutSelecting);

  /// Get localized text for label "image_picker_confirm_delete".
  ///
  /// Defaults to "Do you want to delete this image?".
  String get textConfirmDelete => getTranslatedString(IPMessage.confirmDelete);

  /// Get localized text for label "image_picker_confirm_reset_changes".
  ///
  /// Defaults to "Do you want to clear all changes for this image?".
  String get textConfirmResetChanges =>
      getTranslatedString(IPMessage.confirmResetChanges);

  /// Get localized text for label "yes".
  ///
  /// Defaults to "Yes".
  String get textYes => getTranslatedString(IPMessage.yes);

  /// Get localized text for label "no".
  ///
  /// Defaults to "No".
  String get textNo => getTranslatedString(IPMessage.no);

  /// Get localized text for label "save".
  ///
  /// Defaults to "Save".
  String get textSave => getTranslatedString(IPMessage.save);

  /// Get localized text for label "clear".
  ///
  /// Defaults to "Clear".
  String get textClear => getTranslatedString(IPMessage.clear);

  /// Get localized text for label "image_picker_edit_text".
  ///
  /// Defaults to "Edit text".
  String get textEditText => getTranslatedString(IPMessage.editText);

  /// Get localized text for label "image_picker_no_images".
  ///
  /// Defaults to "No images ...".
  String get textNoImages => getTranslatedString(IPMessage.noImages);

  /// Get localized text for label "image_picker_image_crop_title".
  ///
  /// Defaults to "Image crop".
  String get textImageCropTitle =>
      getTranslatedString(IPMessage.imageCropTitle);

  /// Get localized text for label "image_picker_image_filter_title".
  ///
  /// Defaults to "Image filter".
  String get textImageFilterTitle =>
      getTranslatedString(IPMessage.imageFilterTitle);

  /// Get localized text for label "image_picker_image_edit_title".
  ///
  /// Defaults to "Image edit".
  String get textImageEditTitle =>
      getTranslatedString(IPMessage.imageEditTitle);

  /// Get localized text for label "image_picker_image_sticker_title".
  ///
  /// Defaults to "Image sticker".
  String get textImageStickerTitle =>
      getTranslatedString(IPMessage.imageStickerTitle);

  /// Get localized text for label "image_picker_image_add_text_title".
  ///
  /// Defaults to "Image add text".
  String get textImageAddTextTitle =>
      getTranslatedString(IPMessage.imageAddTextTitle);

  /// Get localized text for label "image_picker_select_button_title".
  ///
  /// Defaults to "Select".
  String get textSelectButtonTitle =>
      getTranslatedString(IPMessage.selectButtonTitle);

  /// Get localized text for label "image_picker_image_sticker_guide".
  ///
  /// Defaults to "You can click on below icons to add into image, double
  /// click to remove it from image".
  String get textImageStickerGuide =>
      getTranslatedString(IPMessage.imageStickerGuide);

  /// Get localized text for label "image_picker_exposure_title".
  ///
  /// Defaults to "Exposure".
  String get textExposure => getTranslatedString(IPMessage.exposureTitle);

  /// Get localized text for label "image_picker_exposure_locked_title".
  ///
  /// Defaults to "Locked".
  String get textExposureLocked =>
      getTranslatedString(IPMessage.exposureLockedTitle);

  /// Get localized text for label "image_picker_exposure_auto_title".
  ///
  /// Defaults to "auto".
  String get textExposureAuto =>
      getTranslatedString(IPMessage.exposureAutoTitle);

  /// Get localized text for label "image_picker_image_edit_contrast".
  ///
  /// Defaults to "contrast".
  String get textContrast => getTranslatedString(IPMessage.imageEditContrast);

  /// Get localized text for label "image_picker_image_edit_brightness".
  ///
  /// Defaults to "brightness".
  String get textBrightness =>
      getTranslatedString(IPMessage.imageEditBrightness);

  /// Get localized text for label "image_picker_image_edit_saturation".
  ///
  /// Defaults to "saturation".
  String get textSaturation =>
      getTranslatedString(IPMessage.imageEditSaturation);

  /// Get localized text for label "image_picker_ocr".
  ///
  /// Defaults to "OCR".
  String get textOCR => getTranslatedString(IPMessage.ocr);

  /// Get localized text for label "image_picker_request_permission".
  ///
  /// Defaults to "Request Permission".
  String get textRequestPermission =>
      getTranslatedString(IPMessage.requestPermission);

  /// Get localized text for label "image_picker_request_camera_permission".
  ///
  /// Defaults to "You need allow camera permission.".
  String get textRequestCameraPermission =>
      getTranslatedString(IPMessage.requestCameraPermission);

  /// Get localized text for label "image_picker_request_gallery_permission".
  ///
  /// Defaults to "You need allow photo gallery permission.".
  String get textRequestGalleryPermission =>
      getTranslatedString(IPMessage.requestGalleryPermission);

  /// Translate string by translateFunc.
  String getTranslatedString(IPMessage value) {
    return translateFunc.call(value.name, value.defaultTranslation);
  }
}

/// A enum containing all the messages used in this package
enum IPMessage {
  /// In en, this message translates to: 'Selected images count'
  selectImagesTitle("Selected images count"),

  /// In en, this message translates to:
  /// 'You need allow photo gallery permission.'
  requestGalleryPermission("You need allow photo gallery permission."),

  /// In en, this message translates to: 'You need allow camera permission.'
  requestCameraPermission("You need allow camera permission."),

  /// In en, this message translates to: 'Request Permission'
  requestPermission("Request Permission"),

  /// In en, this message translates to: 'OCR'
  ocr("OCR"),

  /// In en, this message translates to: 'saturation'
  imageEditSaturation("Saturation"),

  /// In en, this message translates to: 'brightness'
  imageEditBrightness("Brightness"),

  /// In en, this message translates to: 'Contrast'
  imageEditContrast("Contrast"),

  /// In en, this message translates to: 'auto'
  exposureAutoTitle("auto"),

  /// In en, this message translates to: 'Locked'
  exposureLockedTitle("Locked"),

  /// In en, this message translates to: 'Exposure'
  exposureTitle("Exposure"),

  /// In en, this message translates to:
  /// "You can click on sticker icons to
  /// scale it or double click to remove it from image"
  imageStickerGuide(
      "You can click on sticker icons to scale it or double click to "
      "remove it from image"),

  /// In en, this message translates to: 'Select'
  selectButtonTitle("Select"),

  /// In en, this message translates to: 'Image add text'
  imageAddTextTitle("Image add text"),

  /// In en, this message translates to: 'Image sticker'
  imageStickerTitle("Image sticker"),

  /// In en, this message translates to: 'Image edit'
  imageEditTitle("Image edit"),

  /// In en, this message translates to: 'Image filter'
  imageFilterTitle("Image filter"),

  /// In en, this message translates to: 'Image crop'
  imageCropTitle("Image crop"),

  /// In en, this message translates to: 'No images ...'
  noImages("No images ..."),

  /// In en, this message translates to: 'Edit text'
  editText("Edit text"),

  /// In en, this message translates to: 'Clear'
  clear("Clear"),

  /// In en, this message translates to: 'Save'
  save("Save"),

  /// In en, this message translates to: 'No'
  no("No"),

  /// In en, this message translates to: 'Yes'
  yes("Yes"),

  /// In en, this message translates to:
  /// 'Do you want to clear all changes for this image?'
  confirmResetChanges("Do you want to clear all changes for this image?"),

  /// In en, this message translates to: 'Do you want to delete this image?'
  confirmDelete("Do you want to delete this image?"),

  /// In en, this message translates to: 'Confirm'
  confirm("Confirm"),

  /// In en, this message translates to:
  /// 'Do you want to exit without selecting images?'
  exitWithoutSelecting("Do you want to exit without selecting images?"),

  /// In en, this message translates to: 'Preview'
  previewTitle("Preview"),

  /// In en, this message translates to: 'Album'
  albumTitle("Album"),

  /// In en, this message translates to: 'Camera'
  cameraTitle("Camera"),

  /// In en, this message translates to:
  /// 'You can drag images for sorting list...'
  selectImagesGuide("You can drag images for sorting list...");

  /// The default message of the string
  final String defaultTranslation;

  /// A enum containing all the messages used in this package
  // ignore: sort_constructors_first
  const IPMessage(this.defaultTranslation);
}
