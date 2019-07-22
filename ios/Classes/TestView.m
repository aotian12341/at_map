//
//  TestView.m
//  at_map
//
//  Created by AT . on 2019/7/20.
//

#import "TestView.h"

@implementation TestView{
    //FlutterIosTextLabel 创建后的标识
    int64_t _viewId;
    UILabel * _uiLabel;
    //消息回调
    FlutterMethodChannel* _channel;
}

- (instancetype)initWithWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args binaryMessenger:(NSObject<FlutterBinaryMessenger> *)messenger{
    if ([super init]) {
        if (frame.size.width==0) {
            frame=CGRectMake(frame.origin.x, frame.origin.y, [UIScreen mainScreen].bounds.size.width, 22);
        }
        NSDictionary *dic = args;
        _uiLabel =[[UILabel alloc] initWithFrame:frame];
//        _uiLabel.textColor=[UIColor redColor];
        _uiLabel.text= dic[@"msg"];
        _uiLabel.font=[UIFont systemFontOfSize:14];
        _uiLabel.textAlignment=NSTextAlignmentCenter;
//        _uiLabel.backgroundColor=[UIColor grayColor];
        
        _viewId = viewId;
        
    }
    return self;
}

- (UIView *)view{
    return _uiLabel;
}

@end
