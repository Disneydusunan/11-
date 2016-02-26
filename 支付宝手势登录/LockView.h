//
//  LockView.h
//  支付宝手势登录
//
//  Created by 谢谦 on 16/2/27.
//  Copyright © 2016年 杜苏南. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LockView;

@protocol LockViewDeletegate <NSObject>

@optional
-(void)LockView:(LockView*)lockView didFinishAtPath:(NSString *)path;

@end
@interface LockView : UIView

@property (nonatomic,assign)IBOutlet id<LockViewDeletegate> delegate;
@end
