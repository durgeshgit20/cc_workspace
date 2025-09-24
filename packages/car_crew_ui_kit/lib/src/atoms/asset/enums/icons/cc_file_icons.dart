part of 'cc_icons.dart';

enum CCFileIcons implements CCIcons {
    atom,
    badge,
    book,
    box,
    briefcase,
    clipboard,
    compass,
    file,
    fileCheck,
    fileDownload,
    fileGraph,
    fileHeart,
    fileHistory,
    fileLines,
    fileMinus,
    filePlus,
    fileQuestion,
    fileSearch,
    fileX,
    folder,
    folderCheck,
    folderClosed,
    folderDownload,
    folderLock,
    folderMinus,
    folderPlus,
    folderQuestion,
    folderSearch,
    folderX,
    graduationHat,
    medal,
    newspaper,
    trophy,
    ;

    @override
    CCAssetData<SvgGenImage> get data => switch(this) {
        atom => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.academic.atom,
            type: CCAssetType.svg,
        ),
        badge => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.award.badge,
            type: CCAssetType.svg,
        ),
        book => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.book,
            type: CCAssetType.svg,
        ),
        box => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.box,
            type: CCAssetType.svg,
        ),
        briefcase => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.briefcase,
            type: CCAssetType.svg,
        ),
        clipboard => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.clipboard,
            type: CCAssetType.svg,
        ),  
        compass => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.academic.compass,
            type: CCAssetType.svg,
        ),
        file => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.main,
            type: CCAssetType.svg,
        ),
        fileCheck => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.check,
            type: CCAssetType.svg,
        ),
        fileDownload => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.download,
            type: CCAssetType.svg,
        ),
        fileGraph => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.graph,
            type: CCAssetType.svg,
        ),
        fileHeart => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.heart,
            type: CCAssetType.svg,
        ),  
        fileHistory => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.history,
            type: CCAssetType.svg,
        ),
        fileLines => CCAssetData<SvgGenImage>(  
            file: (context) => context.ccAsset.svg.icon.file.files.lines,
            type: CCAssetType.svg,
        ),  
        fileMinus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.minus,
            type: CCAssetType.svg,
        ),
        filePlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.plus,
            type: CCAssetType.svg,
        ),  
        fileQuestion => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.question,
            type: CCAssetType.svg,
        ),
        fileSearch => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.search,
            type: CCAssetType.svg,
        ),      
        fileX => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.files.x,
            type: CCAssetType.svg,
        ),
        folder => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.main,
            type: CCAssetType.svg,
        ),
        folderCheck => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.check,
            type: CCAssetType.svg,
        ),
        folderClosed => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.closed,
            type: CCAssetType.svg,
        ),
        folderDownload => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.download,
            type: CCAssetType.svg,
        ),
        folderLock => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.lock,
            type: CCAssetType.svg,
        ),
        folderMinus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.minus,
            type: CCAssetType.svg,
        ),
        folderPlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.plus,
            type: CCAssetType.svg,
        ),
        folderQuestion => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.question,
            type: CCAssetType.svg,
        ),
        folderSearch => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.search,
            type: CCAssetType.svg,
        ),
        folderX => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.folder.x,
            type: CCAssetType.svg,
        ),
        graduationHat => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.academic.graduationHat,
            type: CCAssetType.svg,
        ),
        medal => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.award.medal,
            type: CCAssetType.svg,
        ),
        newspaper => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.newspaper,
            type: CCAssetType.svg,
        ),
        trophy => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.file.award.trophy,
            type: CCAssetType.svg,
        ),
    };
}   
