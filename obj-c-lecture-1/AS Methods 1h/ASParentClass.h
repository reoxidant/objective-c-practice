//
//  ASParentClass.h
//  obj-c-lecture-1
//
//  Created by Виталий Шаповалов on 14.09.2020.
//  Copyright © 2020 Виталий Шаповалов. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASParentClass : NSObject

- (void) sayHello;

- (void) say: (NSString*) string;

- (void) sayAnother:(NSString*) string andSay:(NSString*) string2 andEndSay:(NSString*) string3;

- (NSString*) sayMyName;

+ (NSString*) sayYouClassName;

- (NSString*) getDate;

- (void) getMemoryScopeOfObjectBySelf;

+ (void) getReferenceClassBySelf;


@end

NS_ASSUME_NONNULL_END
