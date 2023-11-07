//
//  ViewController.m
//  ObjCApp
//
//  Created by 황민채 on 11/7/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Rectangle *rectangle = [[Rectangle alloc] init];
    
    [rectangle setWidth: 10];
    [rectangle setHeight: 10];
    NSLog(@"width: %i", rectangle.width);
    NSLog(@"height: %i", rectangle.height);
    
    [rectangle release];

}


@end


@implementation Rectangle
@synthesize  width;
@synthesize  height;

- (int) area {
    int area;
    area = width * height;
    return area;
}
- (int) parimeter {
    int perimeter;
    perimeter = widtg * 2 + height * 2;
    return 0;
}
