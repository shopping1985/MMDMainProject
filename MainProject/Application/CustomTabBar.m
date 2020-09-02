//
//  CustomTabBar.m
//  TabBarAppTemplate
//
//  Created by linxiaoping on 2020/4/6.
//  Copyright © 2020 linxiaoping. All rights reserved.
//

#import "CustomTabBar.h"

@interface CustomTabBar()
@property(nonatomic, strong)UIButton *customBtn;
@end
@implementation CustomTabBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(UIButton *)customBtn{
    if (_customBtn == nil) {
        _customBtn = [[UIButton alloc] init];
        //设置图片
        UIImage *image = [UIImage imageNamed:@"tabbar_custom"];
        [_customBtn setImage:image forState:UIControlStateNormal];
        _customBtn.frame = CGRectMake(0, 0, image.size.width, image.size.height);
        [_customBtn addTarget:self action:@selector(customBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _customBtn;
}
-(void)customBtnClick{
    //通知代理
    if ([self.customDelegate respondsToSelector:@selector(tabBarDidClickCustomButton:)]) {
        [self.customDelegate tabBarDidClickCustomButton:self];
    }
}
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.customBtn];
    }
    return self;
}
-(void)layoutSubviews{
    //一定要调用
    [super layoutSubviews];
    // 1.设置按钮的位置
    self.customBtn.center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
    // 2.设置其他tabbarButton的位置和尺寸
    CGFloat tabbarButtomWidth = self.bounds.size.width / 5;
    self.customBtn.bounds = CGRectMake(0, 0, tabbarButtomWidth, self.bounds.size.height);
    int index = 0;
    Class class = NSClassFromString(@"UITabBarButton");
    for (UIView *child in self.subviews) {
         if ([child isKindOfClass:class]) {
            // 设置x坐标和宽度
            CGRect oldFrame = child.frame;
            child.frame = CGRectMake(index*tabbarButtomWidth, oldFrame.origin.y, tabbarButtomWidth, oldFrame.size.height);
            // 增加索引
            index++;
            if (index == 2) {
                index++;
            }
        }
    }
}
@end
