//
//  ViewController.m
//  支付宝手势登录
//
//  Created by 谢谦 on 16/2/27.
//  Copyright © 2016年 杜苏南. All rights reserved.
//

#import "ViewController.h"
#import "LockView.h"
@interface ViewController ()<LockViewDeletegate>
@property (weak, nonatomic) IBOutlet LockView *lockView;



@end

@implementation ViewController
-(void)LockView:(LockView *)lockView didFinishAtPath:(NSString *)path
{
    if ([path isEqualToString:@"012345678"]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"密码正确" message:nil
                                                                preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil]];
        [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
        [self presentViewController:alert animated:YES completion:nil];
    }else{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"密码错误" message:nil
                                                                preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil]];
        [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
        [self presentViewController:alert animated:YES completion:nil];
        
    }

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lockView.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
