//
//  NSString+Extend.m
//  私人通讯录
//
//  Created by muxi on 14-9-3.
//  Copyright (c) 2014年 muxi. All rights reserved.
//

#import "NSString+Path.h"

//documents文件夹路径
#define kDocumentsFolder [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]
#define kCachesFolder [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject]


@implementation NSString (Path)




/**
 *  --------------------------------------------------------documents文件夹区----------------------------------------------------------
 */



#pragma mark  拿到documents下的子文件夹
-(NSString *)documentsSubFolder{

    return [NSString makeSubFolderInSuperFolder:kDocumentsFolder subFloder:self];
    
}




-(NSString *)documentsRootFile{
    
    return [NSString makeRootFileWithFolder:kDocumentsFolder fileName:self];
    
}



#pragma mark  拿到documents子文件夹下的.arc文件路径
-(NSString *)documentsSubFolderFile{
    return [self makeubFolderFileInSuperFolder:kDocumentsFolder];
}







/**
 *  -------------------------------------------------------------caches文件夹区-------------------------------------------------------------
 */



#pragma mark  拿到caches下的子文件夹
-(NSString *)cachesSubFolder{
    return [NSString makeSubFolderInSuperFolder:kCachesFolder subFloder:self];
}



#pragma mark  拿到caches根文件夹下的.arc文件路径
-(NSString *)cachesRootFile{
    
    //获取(没有就拿到)caches根文件夹
    NSString *file=[NSString stringWithFormat:@"%@.arc",self];
    
    //文件名拼接
    NSString *path = [kCachesFolder stringByAppendingPathComponent:file];
    
    return path;
    
}



#pragma mark  拿到caches子文件夹下的.arc文件路径
-(NSString *)cachesSubFolderFile;{
    return [self makeubFolderFileInSuperFolder:kCachesFolder];
}




#pragma mark  网络Request缓存专用存放文件夹：默认为/Caches/WebCache/
+(NSString *)cachesSubFolderNamedWebCache{
    return [@"WebCache" cachesSubFolder];
}



#pragma mark  /Caches/WebCache/*.arc
-(NSString *)cachesSubFolderNamedWebCacheFile{
    
    //拿到WebCache文件夹
    NSString *webCacheFolder=[NSString cachesSubFolderNamedWebCache];
    
    //拼接文件名
    NSString *fileName=[NSString stringWithFormat:@"%@.arc",self];
    
    //拼接
    NSString *filePath=[webCacheFolder stringByAppendingPathComponent:fileName];
    
    //返回
    return filePath;
    
}





/**
 *  ---------------------------------------------------------公用方法调用区---------------------------------------------------------
 */

+(NSString *)makeSubFolderInSuperFolder:(NSString *)superFolder subFloder:(NSString *)subFloder{
    
    NSString *folder=[NSString stringWithFormat:@"%@/%@",superFolder,subFloder];
    
    BOOL isDir = NO;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    BOOL existed = [fileManager fileExistsAtPath:folder isDirectory:&isDir];
    
    if ( !(isDir == YES && existed == YES) )
    {
        [fileManager createDirectoryAtPath:folder withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
    return folder;
    
}



+(NSString *)makeRootFileWithFolder:(NSString *)folder fileName:(NSString *)fileName{
    
    //获取(没有就拿到)documents根文件夹
    NSString *file=[NSString stringWithFormat:@"%@.arc",fileName];
    
    //文件名拼接
    NSString *path = [folder stringByAppendingPathComponent:file];
    
    return path;
}


-(NSString *)makeubFolderFileInSuperFolder:(NSString *)superFolder{
    
    //获取(没有就拿到)子文件夹
    NSString *subFolder=[NSString makeSubFolderInSuperFolder:superFolder subFloder:self];
    
    //文件名拼接
    NSString *file=[NSString stringWithFormat:@"%@.arc",self];
    
    //拼接路径
    NSString *path=[subFolder stringByAppendingPathComponent:file];
    
    return path;
}





@end
