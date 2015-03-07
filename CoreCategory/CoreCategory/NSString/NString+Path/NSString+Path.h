//
//  NSString+Extend.h
//  私人通讯录
//
//  Created by muxi on 14-9-3.
//  Copyright (c) 2014年 muxi. All rights reserved.
//
//  沙盒文件夹及文件操作
//  注：所谓拿到，就是如果没有就生成，如果存在就直接返回
//


#import <Foundation/Foundation.h>

@interface NSString (Path)


/**
 *  --------------------------------------------------------documents文件夹区-----------------------------------------------
 */




/**
 * 拿到documents下的子文件夹
 */
-(NSString *)documentsSubFolder;


/**
 * 拿到documents根文件夹下的.arc文件路径
 */
-(NSString *)documentsRootFile;

/**
 * 拿到documents子文件夹下的.arc文件路径
 */
-(NSString *)documentsSubFolderFile;
















/**
 *  -------------------------------------------------------caches文件夹区----------------------------------------------------
 */




/**
 * 拿到caches下的子文件夹
 */
-(NSString *)cachesSubFolder;


/**
 * 拿到caches根文件夹下的.arc文件路径
 */
-(NSString *)cachesRootFile;

/**
 * 拿到caches子文件夹下的.arc文件路径
 */
-(NSString *)cachesSubFolderFile;


/**
 *  网络Request缓存专用存放文件夹：默认为/Caches/WebCache/
 */
+(NSString *)cachesSubFolderNamedWebCache;

/**
 *  /Caches/WebCache/fileName.arc
 */
-(NSString *)cachesSubFolderNamedWebCacheFile;






@end
