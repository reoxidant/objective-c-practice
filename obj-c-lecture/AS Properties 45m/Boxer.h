//
//  Boxer.h
//  obj-c-lecture
//
//  Created by Виталий Шаповалов on 15.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Boxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (nonatomic) float height;
@property (nonatomic) float weight;

//@property (assign, nonatomic) NSInteger nameCount;

- (NSInteger) getCountName;

- (float) whatIsYouHeight;

@end

NS_ASSUME_NONNULL_END
