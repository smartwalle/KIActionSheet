//
//  ViewController.m
//  KIActionSheet
//
//  Created by apple on 16/8/15.
//  Copyright © 2016年 SmartWalle. All rights reserved.
//

#import "ViewController.h"
#import "KIActionSheet.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showActionSheet:(id)sender {
    
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"这里会是一个很长很长的标题，但是最多也只能显示两行哦。。。。" cancelButtonTitle:@"取消" destructiveButtonTitle:@"不要点我哦" otherButtonTitles:@"标题一", @"标题二", @"A", @"B", @"C", nil];
    
    NSLog(@"%d - %d", as.cancelButtonIndex, as.destructiveButtonIndex);
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %d", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %d", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %d", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
    
}

- (IBAction)showActionSheet2:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:nil destructiveButtonTitle:@"不要点我哦" otherButtonTitles:@"标题一", @"标题二", @"A", @"B", @"C", nil];
    
    NSLog(@"%d - %d", as.cancelButtonIndex, as.destructiveButtonIndex);
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %d", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %d", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %d", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}

- (IBAction)showActionSheet3:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"标题一", @"标题二", @"A", @"B", @"C", nil];
    
    NSLog(@"%d - %d", as.cancelButtonIndex, as.destructiveButtonIndex);
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %d", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %d", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %d", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}

- (IBAction)showActionSheet4:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:@"" destructiveButtonTitle:nil otherButtonTitles:@"标题一", @"标题二", @"A", @"B", @"C", nil];
    
    NSLog(@"%d - %d", as.cancelButtonIndex, as.destructiveButtonIndex);
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %d", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %d", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %d", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}

- (IBAction)showActionSheet5:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:@"" destructiveButtonTitle:@"haha" otherButtonTitles:nil];
    
    NSLog(@"%d - %d", as.cancelButtonIndex, as.destructiveButtonIndex);
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %d", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %d", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %d", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}

- (IBAction)showActionSheet6:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:nil];
    
    NSLog(@"%d - %d", as.cancelButtonIndex, as.destructiveButtonIndex);
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %d", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %d", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %d", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}
@end
