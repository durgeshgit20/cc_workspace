part of 'cc_icon_svg.dart';

@immutable
class CCFileIcon {
  final SvgGenImage book;
  final SvgGenImage box;
  final SvgGenImage briefcase;
  final SvgGenImage clipboard;
  final SvgGenImage newspaper;
  final CCFilesFileIcon files;
  final CCFolderFileIcon folder;
  final CCAcademicFileIcon academic;
  final CCAwardFileIcon award;

  const CCFileIcon._({
    required this.book,
    required this.box,
    required this.briefcase,
    required this.clipboard,
    required this.newspaper,
    required this.files,
    required this.folder,
    required this.academic,
    required this.award,
  });

  factory CCFileIcon.asset() => CCFileIcon._(
        book: Assets.svg.icons.files.bookOpen,
        box: Assets.svg.icons.files.box,
        briefcase: Assets.svg.icons.files.briefcase,
        clipboard: Assets.svg.icons.files.clipboard,
        newspaper: Assets.svg.icons.files.newspaper,
        files: CCFilesFileIcon.asset(),
        folder: CCFolderFileIcon.asset(),
        academic: CCAcademicFileIcon.asset(),
        award: CCAwardFileIcon.asset(),
      );
}

@immutable
class CCFilesFileIcon {
  final SvgGenImage main;
  final SvgGenImage check;
  final SvgGenImage download;
  final SvgGenImage graph;
  final SvgGenImage heart;
  final SvgGenImage history;
  final SvgGenImage lines;
  final SvgGenImage minus;
  final SvgGenImage plus;
  final SvgGenImage question;
  final SvgGenImage search;
  final SvgGenImage x;

  const CCFilesFileIcon._({
    required this.main,
    required this.check,
    required this.download,
    required this.graph,
    required this.heart,
    required this.history,
    required this.lines,
    required this.minus,
    required this.plus,
    required this.question,
    required this.search,
    required this.x,
  });

  factory CCFilesFileIcon.asset() => CCFilesFileIcon._(
        main: Assets.svg.icons.files.file,
        check: Assets.svg.icons.files.fileCheck,
        download: Assets.svg.icons.files.fileDownload,
        graph: Assets.svg.icons.files.fileGraph,
        heart: Assets.svg.icons.files.fileHeart,
        history: Assets.svg.icons.files.fileHistory,
        lines: Assets.svg.icons.files.fileLines,
        minus: Assets.svg.icons.files.fileMinus,
        plus: Assets.svg.icons.files.filePlus,
        question: Assets.svg.icons.files.fileQuestion,
        search: Assets.svg.icons.files.fileSearch,
        x: Assets.svg.icons.files.fileX,
      );
}

@immutable
class CCFolderFileIcon {
  final SvgGenImage main;
  final SvgGenImage check;
  final SvgGenImage closed;
  final SvgGenImage download;
  final SvgGenImage lock;
  final SvgGenImage minus;
  final SvgGenImage plus;
  final SvgGenImage question;
  final SvgGenImage search;
  final SvgGenImage x;

  const CCFolderFileIcon._({
    required this.main,
    required this.check,
    required this.closed,
    required this.download,
    required this.lock,
    required this.minus,
    required this.plus,
    required this.question,
    required this.search,
    required this.x,
  });

  factory CCFolderFileIcon.asset() => CCFolderFileIcon._(
        main: Assets.svg.icons.files.folder,
        check: Assets.svg.icons.files.folderCheck,
        closed: Assets.svg.icons.files.folderClosed,
        download: Assets.svg.icons.files.folderDownload,
        lock: Assets.svg.icons.files.folderLock,
        minus: Assets.svg.icons.files.folderMinus,
        plus: Assets.svg.icons.files.folderPlus,
        question: Assets.svg.icons.files.folderQuestion,
        search: Assets.svg.icons.files.folderSearch,
        x: Assets.svg.icons.files.folderX,
      );
}

@immutable
class CCAcademicFileIcon {
  final SvgGenImage atom;
  final SvgGenImage compass;
  final SvgGenImage graduationHat;

  const CCAcademicFileIcon._({
    required this.atom,
    required this.compass,
    required this.graduationHat,
  });

  factory CCAcademicFileIcon.asset() => CCAcademicFileIcon._(
        atom: Assets.svg.icons.files.atom,
        compass: Assets.svg.icons.files.compass,
        graduationHat: Assets.svg.icons.files.graduationHat,
      );
}

@immutable
class CCAwardFileIcon {
  final SvgGenImage badge;
  final SvgGenImage medal;
  final SvgGenImage trophy;

  const CCAwardFileIcon._({
    required this.badge,
    required this.medal,
    required this.trophy,
  });

  factory CCAwardFileIcon.asset() => CCAwardFileIcon._(
        badge: Assets.svg.icons.files.awardBadge,
        medal: Assets.svg.icons.files.awardMedal,
        trophy: Assets.svg.icons.files.trophy,
      );
}
