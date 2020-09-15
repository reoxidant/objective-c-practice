//
//  ASMethodsViewController.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 15.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "ASMethodsViewController.h"
#import "ASChildClass.h"

@interface ASMethodsViewController ()

@end

@implementation ASMethodsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    ASChildClass* parent = [[ASChildClass alloc] init];

    [parent sayHello];
        
    [parent say: @"Masha in love me"];
        
    [parent sayAnother:@"How are you?" andSay:@"How is you day?" andEndSay:@"How is it going?"];
        
    NSLog(@"%@", [parent sayMyName]);
        
    NSLog(@"%@", [ASChildClass sayYouClassName]);
        
    NSLog(@" Current date is %@", [parent getDate]);
        
    NSLog(@"%@", [parent getParentDate]);
        
    [parent getMemoryScopeOfObjectBySelf]; //Scope Memory by reference self
        
    [ASChildClass getReferenceClassBySelf]; //Return Class by reference self
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
