//
//  BoxerViewController.m
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 15.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "BoxerViewController.h"
#import "Boxer.h"

@interface BoxerViewController ()

@end

@implementation BoxerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Boxer* boxer = [[Boxer alloc] init];
    
//    boxer.name = @"Vitaliy";
//    boxer.age = 25;
//    boxer.height = 180.f;
//    boxer.weight = 90.f;
//
//    NSLog(@"Name = %@", boxer.name);
//    NSLog(@"Age = %zd", boxer.age);
//    NSLog(@"Height = %f", boxer.height);
//    NSLog(@"Weight = %f", boxer.weight);
    
    //Setters and Getters
    //If prop public
//    [boxer setNameCount:0];
    
    [boxer setName:@"Masha"];
    [boxer setAge: 27];
    [boxer setHeight:170];
    [boxer setWeight:90];
    
    NSLog(@"Name = %@", [boxer name]);
    NSLog(@"Name = %@", [boxer name]);
    NSLog(@"Name = %@", [boxer name]);
    NSLog(@"Name = %@", [boxer name]);
    NSLog(@"Name = %@", [boxer name]);
    NSLog(@"Name = %@", [boxer name]);
     //If prop public
//    NSLog(@"Count say name is: %zd", [boxer nameCount]);
    NSLog(@"Count say name is: %d", (int)[boxer getCountName]);
    
    NSLog(@"Age = %zd", [boxer age]);
    NSLog(@"Height = %f", [boxer height]);
    NSLog(@"Weight = %f", [boxer weight]);
    
    NSLog(@"My height is: %f", [boxer whatIsYouHeight]);
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
