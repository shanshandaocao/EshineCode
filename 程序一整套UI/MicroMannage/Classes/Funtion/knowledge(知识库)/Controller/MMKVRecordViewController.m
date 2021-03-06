//
//  MMKVRecordViewController.m
//  MicroMannage
//
//  Created by 倪望龙 on 2017/3/11.
//  Copyright © 2017年 xunyijia. All rights reserved.
//

#import "MMKVRecordViewController.h"
#import "MMKVRecordTableViewCell.h"
@interface MMKVRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation MMKVRecordViewController

-(UITableView *)tableView{
    if(_tableView == nil){
        self.tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        self.tableView.backgroundColor = [UIColor whiteColor];
        [self.tableView registerClass:[MMKVRecordTableViewCell class] forCellReuseIdentifier:@"MMKVRecordTableViewCell"];
        self.tableView.rowHeight = 164.0f;
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self RVSetUpSubviews];
    // Do any additional setup after loading the view.
}

-(void)RVSetUpSubviews{
    [self.view addSubview:self.tableView];
    
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).with.insets(UIEdgeInsetsMake(0, 0, 43.0f, 0));
    }];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1.0f;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10.0f;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MMKVRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MMKVRecordTableViewCell"];
    if(cell == nil){
        cell = [[MMKVRecordTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MMKVRecordTableViewCell"];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
