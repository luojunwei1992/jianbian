//
//  ViewController.m
//  jianbian
//
//  Created by comma on 16/5/17.
//  Copyright © 2016年 lj. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationBar+common.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    
    self.navigationItem.title = @"zhuye";
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //便宜量
    CGFloat contentY = scrollView.contentOffset.y;
    
    UIColor *color = [UIColor redColor];
    
    NSLog(@"%lf------pyl",contentY);
    
    //取得渐变alpha,上移的时候显示
    CGFloat alpha = (contentY + 20) / 200;
    
    if (contentY > -64) {
        
        [self.navigationController.navigationBar alphaNavigationBarView:[color colorWithAlphaComponent:alpha]];
        
    }else{
        
        [self.navigationController.navigationBar alphaNavigationBarView:[color colorWithAlphaComponent:0]];
    }
}

@end
