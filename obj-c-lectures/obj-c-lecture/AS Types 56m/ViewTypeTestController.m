//
//  ViewTypeTestController.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 21.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ViewTypeTestController.h"
#import "TypesTest.h"
#import "StudentA.h"

@interface ViewTypeTestController ()

@end

@implementation ViewTypeTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    TypesTest *types = [[TypesTest alloc] init];
    
    [types types];
//
//    StudentA *studA = [[StudentA alloc] init];
//    studA.name = @"I am Vitaliy";
//    StudentA * studB = studA;
//    studB.name = @"I am Mary";
//
//    NSLog(@"Name stud is: %@",studA.name);
    
    NSInteger a = 10;
    NSInteger b = a;
    
//    b += 100;
//
//    NSLog(@"First values, a = %zd, b = %zd", a, b);
//
//    NSInteger *c = &a;
//
//    *c = 5;
//
//    NSLog(@"Second values, a = %zd, b = %zd", a, b);
    
//    NSLog(@"Third values,result = %zd, a = %zd, b = %zd", result, a, b);
    
    NSInteger result = [self value:(NSInteger)a byReference:(NSInteger*)&b];
    
    NSLog(@"result = %d, a = %zd, b = %zd", (int)result, a, b);
}


- (NSInteger) value: (NSInteger)valueType byReference: (NSInteger*)ref{
    
    valueType += 100;
    
    *ref = 1000;
    
    return valueType;
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
