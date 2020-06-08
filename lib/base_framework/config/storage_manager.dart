


import 'dart:io';

import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';


class StorageManager{


  /// 临时目录  （华为手机可能会随机删除这个目录下的文件）
  static Directory temporaryDirectory;
  ///应用目录
  static Directory appDirectory;

  static init()async{
    await SpUtil.getInstance();
    temporaryDirectory = await getTemporaryDirectory();
    appDirectory = await getApplicationDocumentsDirectory();
    ///本地缓存基本都可以使用此工具
    ///后续页面可以同步使用


  }

}