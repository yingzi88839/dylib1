#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <objc/runtime.h>

// 功能开关状态
static BOOL g_enableFog = NO;
static BOOL g_enableFullBright = NO;
static float g_fogStartDistance = 0.0f;
static float g_fogEndDistance = 1000.0f;

// 菜单按钮点击处理
@interface CheatMenuController : NSObject
+ (instancetype)shared;
- (void)showMenu;
- (void)toggleFog:(id)sender;
- (void)toggleFullBright:(id)sender;
@end

@implementation CheatMenuController

+ (instancetype)shared {
    static CheatMenuController *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)showMenu {
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"军师超自然 - 作弊菜单"
                                                                     message:@"选择要启用的功能"
                                                              preferredStyle:UIAlertControllerStyleActionSheet];
    
    // 雾效果开关
    NSString *fogTitle = g_enableFog ? @"关闭雾效果" : @"开启雾效果";
    [alert addAction:[UIAlertAction actionWithTitle:fogTitle
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction *action) {
                                                 [self toggleFog:nil];
                                             }]];
    
    // 全屏亮光开关
    NSString *brightTitle = g_enableFullBright ? @"关闭全屏亮光" : @"开启全屏亮光";
    [alert addAction:[UIAlertAction actionWithTitle:brightTitle
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction *action) {
                                                 [self toggleFullBright:nil];
                                             }]];
    
    // 设置雾开始距离
    [alert addAction:[UIAlertAction actionWithTitle:@"设置雾开始距离"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction *action) {
                                                 [self showFogStartDistanceInput];
                                             }]];
    
    // 设置雾结束距离
    [alert addAction:[UIAlertAction actionWithTitle:@"设置雾结束距离"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction *action) {
                                                 [self showFogEndDistanceInput];
                                             }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"关闭"
                                               style:UIAlertActionStyleCancel
                                             handler:nil]];
    
    // 在iPad上设置源视图
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        alert.popoverPresentationController.sourceView = window;
        alert.popoverPresentationController.sourceRect = CGRectMake(window.bounds.size.width / 2, window.bounds.size.height / 2, 0, 0);
        alert.popoverPresentationController.permittedArrowDirections = 0;
    }
    
    [window.rootViewController presentViewController:alert animated:YES completion:nil];
}

- (void)showFogStartDistanceInput {
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"设置雾开始距离"
                                                                     message:@"输入数值（当前：%.2f）"
                                                              preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.keyboardType = UIKeyboardTypeDecimalPad;
        textField.text = [NSString stringWithFormat:@"%.2f", g_fogStartDistance];
    }];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"确定"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction *action) {
                                                 UITextField *textField = alert.textFields.firstObject;
                                                 g_fogStartDistance = [textField.text floatValue];
                                                 [self applySettings];
                                             }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"取消"
                                               style:UIAlertActionStyleCancel
                                             handler:nil]];
    
    [window.rootViewController presentViewController:alert animated:YES completion:nil];
}

- (void)showFogEndDistanceInput {
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"设置雾结束距离"
                                                                     message:@"输入数值（当前：%.2f）"
                                                              preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.keyboardType = UIKeyboardTypeDecimalPad;
        textField.text = [NSString stringWithFormat:@"%.2f", g_fogEndDistance];
    }];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"确定"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction *action) {
                                                 UITextField *textField = alert.textFields.firstObject;
                                                 g_fogEndDistance = [textField.text floatValue];
                                                 [self applySettings];
                                             }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"取消"
                                               style:UIAlertActionStyleCancel
                                             handler:nil]];
    
    [window.rootViewController presentViewController:alert animated:YES completion:nil];
}

- (void)toggleFog:(id)sender {
    g_enableFog = !g_enableFog;
    [self applySettings];
}

- (void)toggleFullBright:(id)sender {
    g_enableFullBright = !g_enableFullBright;
    [self applySettings];
}

- (void)applySettings {
    // 这里添加Unity函数调用
    // 需要根据实际的内存地址进行hook
    
    NSLog(@"[JunshiCheat] Settings applied - Fog: %d, Start: %.2f, End: %.2f", 
          g_enableFog, g_fogStartDistance, g_fogEndDistance);
}

@end

// 悬浮按钮
@interface FloatingButton : UIButton
@end

@implementation FloatingButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupButton];
    }
    return self;
}

- (void)setupButton {
    self.backgroundColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.9 alpha:0.9];
    self.layer.cornerRadius = 25;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = 0.3;
    self.layer.shadowOffset = CGSizeMake(0, 2);
    
    [self setTitle:@"作弊" forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
    [self addTarget:[CheatMenuController shared] 
              action:@selector(showMenu) 
    forControlEvents:UIControlEventTouchUpInside];
    
    // 添加拖拽手势
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    [self addGestureRecognizer:pan];
}

- (void)handlePan:(UIPanGestureRecognizer *)gesture {
    CGPoint translation = [gesture translationInView:self.superview];
    CGPoint newCenter = CGPointMake(self.center.x + translation.x, self.center.y + translation.y);
    
    // 确保按钮在屏幕范围内
    CGFloat halfWidth = self.bounds.size.width / 2;
    CGFloat halfHeight = self.bounds.size.height / 2;
    newCenter.x = MAX(halfWidth, MIN(newCenter.x, self.superview.bounds.size.width - halfWidth));
    newCenter.y = MAX(halfHeight, MIN(newCenter.y, self.superview.bounds.size.height - halfHeight));
    
    self.center = newCenter;
    [gesture setTranslation:CGPointZero inView:self.superview];
}

@end

// 构造函数
__attribute__((constructor))
static void initialize() {
    NSLog(@"[JunshiCheat] Loading cheat plugin...");
    
    dispatch_async(dispatch_get_main_queue(), ^{
        @try {
            // 等待窗口准备好
            [NSThread sleepForTimeInterval:1.0];
            
            UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
            if (!window) {
                NSLog(@"[JunshiCheat] Window not found");
                return;
            }
            
            // 创建悬浮按钮
            FloatingButton *button = [[FloatingButton alloc] initWithFrame:CGRectMake(window.bounds.size.width - 70, 100, 50, 50)];
            [window addSubview:button];
            
            NSLog(@"[JunshiCheat] Cheat plugin loaded successfully!");
        } @catch (NSException *exception) {
            NSLog(@"[JunshiCheat] Error: %@", exception);
        }
    });
}
