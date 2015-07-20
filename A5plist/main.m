//
//  main.m
//  A5plist
//
//  Created by qianfeng on 15-6-3.
//  Copyright (c) 2015年 sir.liu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
       
        /*
         1.用xcode直接创建
         2.用代码创建
         
         
         */
#if 0
        //从plist 里面读取数据，容器是字典或是数组（根据plist最外层的类型决定）
        //数组和字典只能从plist 的文件里面读数据，不能从txt中读
        NSString * path = @"/Users/qianfeng/Desktop/课堂练习/3/3/A5plist/A5plist/QF.plist";
        NSDictionary * dic = [NSDictionary dictionaryWithContentsOfFile:path];
        NSLog(@"%@",dic);
        
        NSLog(@"last class = %@",[[dic objectForKey:@"classNum"] lastObject]);
        
        
#else
        
        NSDictionary * dic = [NSDictionary dictionaryWithObjectsAndKeys:@"Tencent",@"compannyNme",@"mahuateng",@"CEO",@[@"qie",@"jiangshang",@"youxi",@"kengdie"],@"tag", nil];
        NSLog(@"%@",dic);
        [dic writeToFile:@"/Users/qianfeng/Desktop/1.plist" atomically:YES];
        
        
#endif
        
        
        
        
        
    }
    return 0;
}

