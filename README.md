
# Routable
===

## 使用优势：

1.减少 UIViewController 之间的耦合

2.调用App

3.不用限制 随意跳转 （在view上也可以跳转,点击推送也可以直接在appdelagate跳转任意Controller）

4.在一个基类里注册方便统一管理，提高代码的复用性规范性

另：不影响以前代码使用


## 使用方法：

分Appdelegate+Routable （负责调用各模块的Routable）,
RoutableConstant （传参数时 对应的param的key 都在这里 ）,
HomeRoutable （针对Home模块创建Routable 该模块下的VC都在里面注册和写跳转方法，类似的还有MineRoutable等）


在HomeRoutable里 要先注册 再写跳转方法
```objective-c
@implementation HomeRoutable

//跳转VC注册
+ (void)loadHomeRoutable {
Routable *routable = [Routable sharedRouter];
[routable map:[FirstViewController Identify] toController:[FirstViewController class]];
[routable map:[SecondViewController Identify] toController:[SecondViewController class]];
}

//不带参数的Routable跳转
+ (void)firstTestRoutable {
[[Routable sharedRouter] open:[FirstViewController Identify] animated:YES];
}

//带参数跳转
+ (void)secondTestRoutableWithUrlString:(NSString *)urlString {
NSDictionary *mmDict = @{ROUTE_HOME_SECOND: urlString};
[[Routable sharedRouter] open:[SecondViewController Identify] animated:YES extraParams:mmDict];
}

@end
```

在准备跳转的试图里：
```
objective-c
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
[tableView deselectRowAtIndexPath:indexPath animated:YES];
if (indexPath.row == 0) {
[HomeRoutable firstTestRoutable];
return;
}
[HomeRoutable secondTestRoutableWithTitleString:@"哈哈哈哈哈"];
}
```

在有参数传递的跳转过去的试图中 要添加下面方法
```objective-c
@implementation UserController

- (id)initWithRouterParams:(NSDictionary *)params {
  if (self = [super initWithRouterParams:params]) {
    self.titleString = params[ROUTE_HOME_SECOND];
  }
  return self;
}
```





