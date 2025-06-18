import 'package:qr_scanner/core/constants/asset_path_const.dart';

enum ScanType {
  text,
  website,
  wifi,
  contact,
  email,
  instagram,
  phone,
  twitter;

  String get name {
    switch (this) {
      case ScanType.text:
        return 'Text';
      case ScanType.website:
        return 'Website';
      case ScanType.wifi:
        return 'WiFi';
      case ScanType.contact:
        return 'Contact';
      case ScanType.email:
        return 'Email';
      case ScanType.instagram:
        return 'Instagram';
      case ScanType.phone:
        return 'Phone';
      case ScanType.twitter:
        return 'Twitter';
    }
  }

  String get icon {
    switch (this) {
      case ScanType.text:
        return AssetPathConst.icText;
      case ScanType.website:
        return AssetPathConst.icWebsite;
      case ScanType.wifi:
        return AssetPathConst.icWifi;
      case ScanType.contact:
        return AssetPathConst.icContact;
      case ScanType.email:
        return AssetPathConst.icEmail;
      case ScanType.instagram:
        return AssetPathConst.icIg;
      case ScanType.phone:
        return AssetPathConst.icPhone;
      case ScanType.twitter:
        return AssetPathConst.icTwitter;
    }
  }
}
