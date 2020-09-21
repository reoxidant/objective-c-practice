//
//  ViewNSArrayTestViewController.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 21.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ViewNSArrayTestViewController.h"
#import "NSArrayTest.h"
#import "ArrayObject.h"
#import "ChildArrayObject.h"

@interface ViewNSArrayTestViewController ()

@end

@implementation ViewNSArrayTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSArrayTest *arm = [[NSArrayTest alloc] init];
//    [arm workWithArray];
    
    ArrayObject *obj1 = [[ArrayObject alloc] init];
    ArrayObject *obj2 = [[ArrayObject alloc] init];
    ChildArrayObject *obj3 = [[ChildArrayObject alloc] init];
    
    NSArray *array = [NSArray arrayWithObjects:obj1,obj2,obj3,nil];
    
    obj1.name = @"String parent object1";
    obj2.name = @"String parent object2";
    obj3.lastName = @"String child object3";
    
    
    for (ArrayObject *item in array) {
        if([item isKindOfClass:[ChildArrayObject class]]){
            ChildArrayObject* child = (ChildArrayObject*)item;
            NSLog(@"lastName = %@", child.lastName);
        }else{
            NSLog(@"name = %@", item.name);
            NSLog(@"Action is: %@", [item action]);
        }
    }
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
