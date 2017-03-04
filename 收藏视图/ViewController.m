//
//  ViewController.m
//  收藏视图
//
//  Created by 码农教育2 on 16/3/21.
//  Copyright © 2016年 码农教育2. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //设置瀑布流方向为垂直
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    //设置每个item的大小为
    layout.itemSize = CGSizeMake(100, 100);
    //创建collectionview 通过一个布局策略layout来创建
    UICollectionView *collection = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    //代理设置
    collection.delegate = self;
    collection.dataSource = self;
    //注册item类型 使用系统类型
    [collection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellid"];
    [self.view addSubview:collection];
}
//自定义
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellid" forIndexPath:indexPath];
    NSInteger n1=arc4random()%256;
    NSInteger n2=arc4random()%256;
    NSInteger n3=arc4random()%256;
    cell.backgroundColor = [UIColor colorWithRed:n1/255.0 green:n2/255.0 blue:n3/255.0 alpha:1];
    
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger a=indexPath.row;
    NSLog(@"a=%ld",a);

}
//分区数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
//个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 100;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
