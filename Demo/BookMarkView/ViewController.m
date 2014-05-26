//
//  ViewController.m
//  BookMarkView
//
//  Created by jianpx on 5/25/14.
//  Copyright (c) 2014 __MyCompany__. All rights reserved.
//

#import "ViewController.h"
#import "BookMarkView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet BookMarkView *bookmarkLeft;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor greenColor];

    //init from code.
    BookMarkView *bookmarkViewRight = [[BookMarkView alloc] initWithFrame:CGRectMake(200, 100, 100, 300)];
    bookmarkViewRight.bgColor = [UIColor redColor];
    bookmarkViewRight.markLabel.text = @"已经看完第一章节";
    bookmarkViewRight.markLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:bookmarkViewRight];

    //init from xib or storyboard.
    self.bookmarkLeft.markLabel.text = @"我已经看完第二章节了";
}

@end
