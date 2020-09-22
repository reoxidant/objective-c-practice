//
//  StudentA.h
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 21.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import "TypesTest.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum{
    MaleGender = 5,
    FemaleGender = 10
} ASGender;

@interface StudentA : TypesTest
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) ASGender *gender;
@end

NS_ASSUME_NONNULL_END
