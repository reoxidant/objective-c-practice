//
//  ChildArrayObject.h
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 21.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface ChildArrayObject : ArrayObject

@property (strong, nonatomic) NSString *lastName;

@end

NS_ASSUME_NONNULL_END
