part of 'cc_icon_svg.dart';

@immutable
class CCSecurityIcon { 
    final SvgGenImage key;
    final SvgGenImage keyHole;
    final SvgGenImage scan;
    final CCBiometricSecurityIcon biometric;
    final CCLockSecurityIcon lock;
    final CCShieldSecurityIcon shield;
    final CCPasscodeSecurityIcon passcode;

    const CCSecurityIcon._({
        required this.key,
        required this.keyHole,
        required this.scan,
        required this.biometric,
        required this.lock,
        required this.shield,
        required this.passcode, 
    }); 

    factory CCSecurityIcon.asset() => CCSecurityIcon._(
        key: Assets.svg.icons.security.key,
        keyHole: Assets.svg.icons.security.lockKeyholeCircle,
        scan: Assets.svg.icons.security.scan,
        biometric: CCBiometricSecurityIcon.asset(),
        lock: CCLockSecurityIcon.asset(),
        shield: CCShieldSecurityIcon.asset(),
        passcode: CCPasscodeSecurityIcon.asset(),
    );  
}

@immutable
class CCBiometricSecurityIcon { 
    final SvgGenImage main;
    final SvgGenImage face;
    final SvgGenImage fingerprint;

    const CCBiometricSecurityIcon._({
        required this.main,
        required this.face,
        required this.fingerprint,
    });

    factory CCBiometricSecurityIcon.asset() => CCBiometricSecurityIcon._(
        main: Assets.svg.icons.security.biometric,
        face: Assets.svg.icons.security.faceId,
        fingerprint: Assets.svg.icons.security.fingerprint,
    );
    
}

@immutable
class CCLockSecurityIcon { 
    final SvgGenImage locked;
    final SvgGenImage unlocked;

    const CCLockSecurityIcon._({
        required this.locked,
        required this.unlocked,
    });
    
    factory CCLockSecurityIcon.asset() => CCLockSecurityIcon._(
        locked: Assets.svg.icons.security.lock,
        unlocked: Assets.svg.icons.security.lockUnlocked,
    );
    
}

@immutable
class CCShieldSecurityIcon { 
    final SvgGenImage dollar;
    final SvgGenImage main;
    final SvgGenImage off;
    final SvgGenImage plus;
    final SvgGenImage tick;
    final SvgGenImage zap;

    const CCShieldSecurityIcon._({
        required this.dollar,
        required this.main,
        required this.off,
        required this.plus,
        required this.tick,
        required this.zap,
    }); 
    
    factory CCShieldSecurityIcon.asset() => CCShieldSecurityIcon._(
        dollar: Assets.svg.icons.security.shieldDollar,
        main: Assets.svg.icons.security.shieldOn,
        off: Assets.svg.icons.security.shieldOff,       
        plus: Assets.svg.icons.security.shieldPlus,
        tick: Assets.svg.icons.security.shieldTick,
        zap: Assets.svg.icons.security.shieldZap,
    );
}

@immutable
class CCPasscodeSecurityIcon {
    final SvgGenImage main;
    final SvgGenImage typing;
    final SvgGenImage lock;

    const CCPasscodeSecurityIcon._({
        required this.main,
        required this.typing,
        required this.lock,
    });

    factory CCPasscodeSecurityIcon.asset() => CCPasscodeSecurityIcon._(
        main: Assets.svg.icons.security.passcode,
        typing: Assets.svg.icons.security.passcodeTyping,   
        lock: Assets.svg.icons.security.passcodeLock,
    );  
}
