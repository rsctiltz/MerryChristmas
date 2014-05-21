//
//  ChimneyLabel.h
//  Santa's Coice
//
//  Created by Ryan Tiltz on 5/21/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ChimneyLabelDelegate
- (void)visitedNaughtyChildName:(NSString *)name;
- (void)visitedNiceChildName:(NSString *)name;

@end

@interface ChimneyLabel : UILabel
@property id <ChimneyLabelDelegate> delegate;
@property (readonly) BOOL isNaughty;
@property (readonly) NSString *childName;
@end
