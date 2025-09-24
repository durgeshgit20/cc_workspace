part of 'cc_icons.dart';

enum CCUserIcons implements CCIcons{
    avatar,
    avatarCheck,
    avatarCircle,
    avatarEdit,
    avatarMinus,
    avatarPlus,
    avatarUsers,
    avatarX,
    emojiFace,
    emojiFrown,
    emojiHappy,
    emojiNeutral,
    emojiSad,
    emojiSmile,
    emojiWink,
    identityCard,
    ;

    @override
    CCAssetData<SvgGenImage> get data => switch(this){
        avatar => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.avatar.main,
            type: CCAssetType.svg,
        ),
        avatarCheck => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.avatar.check,
            type: CCAssetType.svg,
        ),
        avatarCircle => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.avatar.circle,
            type: CCAssetType.svg,
        ),
        avatarEdit => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.avatar.edit,
            type: CCAssetType.svg,
        ),
        avatarMinus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.avatar.minus,
            type: CCAssetType.svg,
        ),  
        avatarPlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.avatar.plus,
            type: CCAssetType.svg,
        ),
        avatarUsers => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.avatar.users,
            type: CCAssetType.svg,
        ),  
        avatarX => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.avatar.x,
            type: CCAssetType.svg,
        ),
        emojiFace => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.emoji.face,
            type: CCAssetType.svg,
        ),  
        emojiFrown => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.emoji.frown,
            type: CCAssetType.svg,
        ),
        emojiHappy => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.emoji.happy,
            type: CCAssetType.svg,
        ),  
        emojiNeutral => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.emoji.neutral,
            type: CCAssetType.svg,
        ),
        emojiSad => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.emoji.sad,
            type: CCAssetType.svg,
        ),  
        emojiSmile => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.emoji.smile,
            type: CCAssetType.svg,
        ),
        emojiWink => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.emoji.wink,
            type: CCAssetType.svg,
        ),  
        identityCard => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.user.identityCard,
            type: CCAssetType.svg,
        ),  
    };
}
