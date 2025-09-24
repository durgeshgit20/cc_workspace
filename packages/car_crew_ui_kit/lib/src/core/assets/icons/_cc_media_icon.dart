part of 'cc_icon_svg.dart';

@immutable
class CCMediaIcon {
    final CCCameraMediaIcon camera;
    final CCDeviceMediaIcon device;
    final CCFlashMediaIcon flash;
    final CCImageMediaIcon image;
    final CCImageUserMediaIcon imageUser;
    final CCControlMediaIcon control;
    final CCMicrophoneMediaIcon microphone;
    final CCSignalMediaIcon signal;
    final CCVolumeMediaIcon volume; 
    
    const CCMediaIcon._({
        required this.camera,
        required this.device,
        required this.flash,
        required this.image,
        required this.imageUser,
        required this.control,
        required this.microphone,
        required this.signal,
        required this.volume,
    });

    factory CCMediaIcon.asset() => CCMediaIcon._(
        camera: CCCameraMediaIcon.asset(),
        device: CCDeviceMediaIcon.asset(),
        flash: CCFlashMediaIcon.asset(),
        image: CCImageMediaIcon.asset(),
        imageUser: CCImageUserMediaIcon.asset(),
        control: CCControlMediaIcon.asset(),
        microphone: CCMicrophoneMediaIcon.asset(),
        signal: CCSignalMediaIcon.asset(),
        volume: CCVolumeMediaIcon.asset(),
    );
}   

@immutable
class CCCameraMediaIcon {
    final SvgGenImage main;
    final SvgGenImage off;
    final SvgGenImage videoRecorder;
    final SvgGenImage videoRecorderOff;

    const CCCameraMediaIcon._({
        required this.main,
        required this.off,
        required this.videoRecorder,
        required this.videoRecorderOff,
    });

    factory CCCameraMediaIcon.asset() => CCCameraMediaIcon._(
        main: Assets.svg.icons.media.camera,
        off: Assets.svg.icons.media.cameraOff,
        videoRecorder: Assets.svg.icons.media.videoRecorder,
        videoRecorderOff: Assets.svg.icons.media.videoRecorderOff,
    );
}

@immutable
class CCDeviceMediaIcon {
    final SvgGenImage monitor;
    final SvgGenImage laptop;
    final SvgGenImage tablet;

    const CCDeviceMediaIcon._({
        required this.monitor,
        required this.laptop,
        required this.tablet,
    });

    factory CCDeviceMediaIcon.asset() => CCDeviceMediaIcon._(
        monitor: Assets.svg.icons.media.monitor, 
        laptop: Assets.svg.icons.media.laptop,
        tablet: Assets.svg.icons.media.tablet,
    );
}

@immutable
class CCFlashMediaIcon {
    final SvgGenImage flash;
    final SvgGenImage flashOff;

    const CCFlashMediaIcon._({
        required this.flash,
        required this.flashOff,
    });

    factory CCFlashMediaIcon.asset() => CCFlashMediaIcon._(
        flash: Assets.svg.icons.media.flash,
        flashOff: Assets.svg.icons.media.flashOff,
    );
}

@immutable
class CCImageMediaIcon {
    final SvgGenImage main;
    final SvgGenImage plus;
    final SvgGenImage check;
    final SvgGenImage x;

    const CCImageMediaIcon._({
        required this.main,
        required this.plus,
        required this.check,
        required this.x,
    });

    factory CCImageMediaIcon.asset() => CCImageMediaIcon._(
        main: Assets.svg.icons.media.image,
        plus: Assets.svg.icons.media.imagePlus,
        check: Assets.svg.icons.media.imageCheck,
        x: Assets.svg.icons.media.imageX,
    );  
}

@immutable
class CCImageUserMediaIcon {
    final SvgGenImage main;
    final SvgGenImage plus;
    final SvgGenImage x;

    const CCImageUserMediaIcon._({
        required this.main, 
        required this.plus,
        required this.x,
    });

    factory CCImageUserMediaIcon.asset() => CCImageUserMediaIcon._(
        main: Assets.svg.icons.media.imageUser,
        plus: Assets.svg.icons.media.imageUserPlus,
        x: Assets.svg.icons.media.imageUserX,
    );
}

@immutable
class CCControlMediaIcon {
    final SvgGenImage play;
    final SvgGenImage playCircle;
    final SvgGenImage stop;
    final SvgGenImage stopCircle;
    final SvgGenImage pauseCircle;
    final SvgGenImage shuffle;
    final SvgGenImage fastForward;
    final SvgGenImage fastBackward;
    final SvgGenImage repeat;

    const CCControlMediaIcon._({
        required this.play,
        required this.playCircle,
        required this.stop,
        required this.stopCircle,
        required this.pauseCircle,
        required this.shuffle,
        required this.fastForward,
        required this.fastBackward,
        required this.repeat,
    });

    factory CCControlMediaIcon.asset() => CCControlMediaIcon._(
        play: Assets.svg.icons.media.play,
        playCircle: Assets.svg.icons.media.playCircle,
        stop: Assets.svg.icons.media.stop,  
        stopCircle: Assets.svg.icons.media.stopCircle,
        pauseCircle: Assets.svg.icons.media.pauseCircle,
        shuffle: Assets.svg.icons.media.shuffle,
        fastForward: Assets.svg.icons.media.fastForward,
        fastBackward: Assets.svg.icons.media.fastBackward,
        repeat: Assets.svg.icons.media.repeat,
    );
}   

@immutable
class CCMicrophoneMediaIcon {
    final SvgGenImage main;
    final SvgGenImage off;
    final SvgGenImage recording;

    const CCMicrophoneMediaIcon._({
        required this.main,
        required this.off,
        required this.recording,
    });

    factory CCMicrophoneMediaIcon.asset() => CCMicrophoneMediaIcon._(
        main: Assets.svg.icons.media.microphone,    
        off: Assets.svg.icons.media.microphoneOff,
        recording: Assets.svg.icons.media.recording,
    );
}

@immutable
class CCSignalMediaIcon {
    final SvgGenImage lightbulb;
    final SvgGenImage signal;
    final SvgGenImage wifi;
    final SvgGenImage wifiOff       ;

    const CCSignalMediaIcon._({
        required this.lightbulb,
        required this.signal,
        required this.wifi,
        required this.wifiOff,
    }); 

    factory CCSignalMediaIcon.asset() => CCSignalMediaIcon._(
        lightbulb: Assets.svg.icons.media.lightbulb,
        signal: Assets.svg.icons.media.signal,
        wifi: Assets.svg.icons.media.wifi,
        wifiOff: Assets.svg.icons.media.wifiOff,
    );
}

@immutable
class CCVolumeMediaIcon {
    final SvgGenImage max;
    final SvgGenImage min;
    final SvgGenImage plus;
    final SvgGenImage minus;
    final SvgGenImage mute;

    const CCVolumeMediaIcon._({
        required this.max,
        required this.min,
        required this.plus, 
        required this.minus,
        required this.mute,
    });

    factory CCVolumeMediaIcon.asset() => CCVolumeMediaIcon._(
        max: Assets.svg.icons.media.volumeMax,
        min: Assets.svg.icons.media.volumeMin,
        plus: Assets.svg.icons.media.volumePlus,
        minus: Assets.svg.icons.media.volumeMinus,
        mute: Assets.svg.icons.media.volumeMute,
    );
}   
