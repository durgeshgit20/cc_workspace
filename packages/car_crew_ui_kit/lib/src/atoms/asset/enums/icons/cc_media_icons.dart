part of 'cc_icons.dart';

enum CCMediaIcons  implements CCIcons{
    camera,
    cameraOff,
    fastBackward,
    fastForward,
    flash,
    flashOff,
    image,
    imageCheck,
    imagePlus,
    imageUser,
    imageUserPlus,
    imageUserX,
    imageX,
    laptop,
    lightbulb,
    microphone,
    microphoneOff,
    monitor,
    pauseCircle,
    play,
    playCircle,
    recording,
    repeat,
    shuffle,
    signal,
    stop,
    stopCircle,
    tablet,
    videoRecorder,
    videoRecorderOff,
    volumeMax,
    volumeMinus,
    volumeMin,
    volumeMute,
    volumePlus,
    wifi,
    wifiOff,
    ;

    @override
    CCAssetData<SvgGenImage> get data => switch(this){
        camera => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.camera.main,
            type: CCAssetType.svg,
        ),
        cameraOff => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.camera.off,
            type: CCAssetType.svg,
        ),
        fastBackward => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.control.fastBackward,
            type: CCAssetType.svg,
        ),
        fastForward => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.control.fastForward,
            type: CCAssetType.svg,
        ),
        flash => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.flash.flash,
            type: CCAssetType.svg,
        ),
        flashOff => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.flash.flashOff,
            type: CCAssetType.svg,
        ),
        image => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.image.main,
            type: CCAssetType.svg,
        ),
        imageCheck => CCAssetData<SvgGenImage>( 
            file: (context) => context.ccAsset.svg.icon.media.image.check,
            type: CCAssetType.svg,
        ),
        imagePlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.image.plus,
            type: CCAssetType.svg,
        ),
        imageUser => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.imageUser.main,
            type: CCAssetType.svg,
        ),
        imageUserPlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.imageUser.plus,
            type: CCAssetType.svg,
        ),
        imageUserX => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.imageUser.x,
            type: CCAssetType.svg,
        ),
        imageX => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.image.x,
            type: CCAssetType.svg,
        ),
        laptop => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.device.laptop,
            type: CCAssetType.svg,
        ),
        lightbulb => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.signal.lightbulb,
            type: CCAssetType.svg,
        ),
        microphone => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.microphone.main,
            type: CCAssetType.svg,
        ),
        microphoneOff => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.microphone.off,
            type: CCAssetType.svg,
        ),
        monitor => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.device.monitor,
            type: CCAssetType.svg,
        ),
        pauseCircle => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.control.pauseCircle,
            type: CCAssetType.svg,
        ),  
        play => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.control.play,
            type: CCAssetType.svg,
        ),
        playCircle => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.control.playCircle,
            type: CCAssetType.svg,
        ),
        recording => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.microphone.recording,
            type: CCAssetType.svg,
        ),
        repeat => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.control.repeat,
            type: CCAssetType.svg,
        ),
        shuffle => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.control.shuffle,
            type: CCAssetType.svg,
        ),
        signal => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.signal.signal,
            type: CCAssetType.svg,
        ),
        stop => CCAssetData<SvgGenImage>(
                file: (context) => context.ccAsset.svg.icon.media.control.stop,
            type: CCAssetType.svg,
        ),
        stopCircle => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.control.stopCircle,
            type: CCAssetType.svg,
        ),
        tablet => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.device.tablet,
            type: CCAssetType.svg,
        ),
        videoRecorder => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.camera.videoRecorder,
            type: CCAssetType.svg,
        ),
        videoRecorderOff => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.camera.videoRecorderOff,
            type: CCAssetType.svg,
        ),
        volumeMax => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.volume.max,
            type: CCAssetType.svg,
        ),
        volumeMinus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.volume.minus,
            type: CCAssetType.svg,
        ),
        volumeMin => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.volume.min,
            type: CCAssetType.svg,
        ),
        volumeMute => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.volume.mute,
            type: CCAssetType.svg,  
        ),
        volumePlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.volume.plus,
            type: CCAssetType.svg,
        ),
        wifi => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.signal.wifi,
            type: CCAssetType.svg,
        ),  
        wifiOff => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.media.signal.wifiOff,
            type: CCAssetType.svg,
        ),
    };
}   
