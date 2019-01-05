# MCStyle
Config custom &amp; smart style for iOS UI

一款App颜色字体图片等资源是有限的，此项目的宗旨是统一样式管理，方便换肤。
如果你的项目是一款UI类的开源库，而你却希望打包成pod库，又希望用户能自定一些样式，那MCStyle就是为你定制的。
如果你的项目的样式管理混乱，可以直接使用MCStyle, enjoy time!

## install
```ruby
pod 'MCStyle'
```


## Struct
```text
MCFont 通用字体
MCColor 通用颜色
MCStyle 通用样式

MCFontConfg 自定义字体
MCColorConfig 自定义颜色
MCStyleConfig 自定义样式

MCStyleManager 样式管理器
```

## Custom
```text
MCFont +custom: 通用字体
MCColor +custom: 通用颜色
MCStyle +customImage: 通用样式

MCFontConfg -custom: 自定义字体
MCColorConfig -custom: 自定义颜色
MCStyleConfig -custom: 自定义样式

通过自定义字体、颜色、样式接口传入MCStyleManager，从而实现样式的自定义。
```

## 接入
### 1. load配置
```objectivec
    json文件格式参考 Custom*.json
    [MCStyleManager share].colorStyleDataCallback = ^NSDictionary *(void) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"CustomColor" ofType:@"json"];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:NSJSONReadingMutableContainers error:nil];
        return dict[@"data"];
    };
    [MCStyleManager share].fontStyleDataCallBack = ^NSDictionary *(void) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"CustomFont" ofType:@"json"];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:NSJSONReadingMutableContainers error:nil];
        return dict[@"data"];
    };

    [MCStyleManager share].styleDataCallback = ^NSDictionary *(void) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"CustomStyle" ofType:@"json"];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:NSJSONReadingMutableContainers error:nil];
        return dict[@"data"];
    };

    [[MCStyleManager share] loadData];
```

### 2. 使用
```objectivec
颜色
[MCColor colorI] or [MCColor custom:@"custom"]

字体大小
[MCFont fontI] or [MCFont custom:@"font"]

图片
[MCStyle imageI] or [MCStyle customImage:@"iamge"]

边距
[MCStyle contentInsetI] or II III
```

# License
MCStyle under MIT license.