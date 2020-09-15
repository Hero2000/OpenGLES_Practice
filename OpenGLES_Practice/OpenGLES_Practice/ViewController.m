//
//  ViewController.m
//  OpenGLES_Practice
//
//  Created by 尹一博 on 2020/9/14.
//  Copyright © 2020 Hero. All rights reserved.
//

#import "ViewController.h"
#import "TriangleViewController.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = @[@"绘制三角形"];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height - 60) style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;

    [self.view addSubview:self.tableView];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

static NSString *CellIdentifier = @"kUITableViewCell";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier: CellIdentifier];
    }
    cell.textLabel.text = [self.dataSource objectAtIndex:indexPath.row];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    NSString *name = [self.dataSource objectAtIndex:indexPath.row];
    if ([name isEqualToString:@"绘制三角形"]) {
        TriangleViewController *ctr = [[TriangleViewController alloc] init];
        ctr .modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentModalViewController:ctr animated:YES];

    }
}



@end
