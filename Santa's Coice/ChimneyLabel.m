//
//  ChimneyLabel.m
//  Santa's Coice
//
//  Created by Ryan Tiltz on 5/21/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ChimneyLabel.h"

@interface ChimneyLabel()
@property ( readwrite) BOOL isNaughty;
@end

@implementation ChimneyLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.isNaughty = arc4random_uniform(2);
        UITapGestureRecognizer* tapGestureRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onTapped:)];
        [self addGestureRecognizer:tapGestureRecognizer];
    }
    return self;
}

-(IBAction)onTapped:(id)sender

{
    if(self.isNaughty) {
        [self.delegate visitedNaughtyChildName:_childName];
    }
    else{
        [self.delegate visitedNiceChildName:_childName];
    }

}

@end
