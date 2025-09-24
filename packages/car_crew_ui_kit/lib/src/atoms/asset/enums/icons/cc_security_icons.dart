part of 'cc_icons.dart';

enum CCSecurityIcons implements CCIcons {
  biometric,
  faceID,
  fingerprint,
  key,
  keyHole,
  lock,
  lockUnlocked,
  passcode,
  passcodeLock,
  passcodeTyping,
  scan,
  shield,
  shieldDollar,
  shieldOff,
  shieldPlus,
  shieldTick,
  shieldZap,
  ;

  @override
  CCAssetData<SvgGenImage> get data => switch (this) {
        biometric => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.biometric.main,
            type: CCAssetType.svg,
          ),
        faceID => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.biometric.face,
            type: CCAssetType.svg,
          ),
        fingerprint => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.security.biometric.fingerprint,
            type: CCAssetType.svg,
          ),
        key => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.key,
            type: CCAssetType.svg,
          ),
        keyHole => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.keyHole,
            type: CCAssetType.svg,
          ),
        lock => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.lock.locked,
            type: CCAssetType.svg,
          ),
        lockUnlocked => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.lock.unlocked,
            type: CCAssetType.svg,
          ),
        passcode => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.passcode.main,
            type: CCAssetType.svg,
          ),
        passcodeLock => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.passcode.lock,
            type: CCAssetType.svg,
          ),
        passcodeTyping => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.security.passcode.typing,
            type: CCAssetType.svg,
          ),
        scan => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.scan,
            type: CCAssetType.svg,
          ),
        shield => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.shield.main,
            type: CCAssetType.svg,
          ),
        shieldDollar => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.shield.dollar,
            type: CCAssetType.svg,
          ),
        shieldOff => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.shield.off,
            type: CCAssetType.svg,
          ),
        shieldPlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.shield.plus,
            type: CCAssetType.svg,
          ),
        shieldTick => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.shield.tick,
            type: CCAssetType.svg,
          ),
        shieldZap => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.security.shield.zap,
            type: CCAssetType.svg,
          ),
      };
}
