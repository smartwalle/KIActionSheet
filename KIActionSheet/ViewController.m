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

- (void)log:(KIActionSheet *)as {
    NSLog(@"================");
    NSLog(@"%ld - %ld", as.cancelButtonIndex, as.destructiveButtonIndex);
    
    [as addButtonWithTitle:@"aa"];
    [as addButtonWithTitle:@"aaa"];
    [as addButtonWithTitle:@"aaaa"];
    
    NSLog(@"标题: %@", [as title]);
    
    NSLog(@"%@", [as buttonTitleAtIndex:0]);
    NSLog(@"%@", [as buttonTitleAtIndex:1]);
    NSLog(@"%@", [as buttonTitleAtIndex:2]);
    NSLog(@"%@", [as buttonTitleAtIndex:3]);
    NSLog(@"%@", [as buttonTitleAtIndex:4]);
    NSLog(@"%@", [as buttonTitleAtIndex:5]);
    NSLog(@"%@", [as buttonTitleAtIndex:6]);
    NSLog(@"%@", [as buttonTitleAtIndex:7]);
    NSLog(@"%@", [as buttonTitleAtIndex:8]);
    
    [as setCancelButtonTitle:@"-Cancel-"];
    [as setDestructiveButtonTitle:@"-Destructive-"];
}

- (IBAction)showActionSheet:(id)sender {
    
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"这里会是一个很长很长的标题，但是最多也只能显示三行哦。。。。真的只能够显示三行，不信你试试看吧。我就说了吧，只显示三行，不会有多的。" cancelButtonTitle:@"取消" destructiveButtonTitle:@"不要点我哦" otherButtonTitles:@"标题一", @"标题二", @"A", @"B", @"C", nil];
    
    [self log:as];
    
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %ld", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %ld", buttonIndex);
        
        
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        if (buttonIndex == actionSheet.destructiveButtonIndex) {
            KIActionSheet *as2 = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"YES", @"NO", nil];
            [as2 show];
        }
        NSLog(@"setWillDismissWithButtonIndexBlock %ld", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
    
}

- (IBAction)showActionSheet2:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:nil destructiveButtonTitle:@"不要点我哦" otherButtonTitles:@"标题一", @"标题二", @"A", @"B", @"C", nil];
    
    [self log:as];
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %ld", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %ld", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %ld", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}

- (IBAction)showActionSheet3:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"标题一", @"标题二", @"A", @"B", @"C", nil];
    
    [self log:as];
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %ld", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %ld", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %ld", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}

- (IBAction)showActionSheet4:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:@"" destructiveButtonTitle:nil otherButtonTitles:@"标题一", @"标题二", @"A", @"B", @"C", nil];
    
    [self log:as];
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %ld", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %ld", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %ld", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}

- (IBAction)showActionSheet5:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:@"" destructiveButtonTitle:@"haha" otherButtonTitles:nil];
    
    [self log:as];
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %ld", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %ld", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %ld", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}

- (IBAction)showActionSheet6:(id)sender {
    KIActionSheet *as = [[KIActionSheet alloc] initWithTitle:@"" cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:nil];
    
    [self log:as];
    
    [as setDidPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setDidPresentBlock");
    }];
    
    [as setWillPresentBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setWillPresentBlock");
    }];
    
    [as setClickedButtonAtIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setClickedButtonAtIndexBlock  %ld", buttonIndex);
    }];
    
    [as setDidDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setDidDismissWithButtonIndexBlock  %ld", buttonIndex);
    }];
    
    [as setWillDismissWithButtonIndexBlock:^(KIActionSheet *actionSheet, NSInteger buttonIndex) {
        NSLog(@"setWillDismissWithButtonIndexBlock %ld", buttonIndex);
    }];
    
    [as setCancelBlock:^(KIActionSheet *actionSheet) {
        NSLog(@"setCancelBlock");
    }];
    
    [as show];
}
@end
