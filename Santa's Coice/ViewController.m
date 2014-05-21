//
//  ViewController.m
//  Santa's Coice
//
//  Created by Ryan Tiltz on 5/21/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"
#import "ChimneyLabel.h"

@interface ViewController () <ChimneyLabelDelegate>

@property (strong, nonatomic) IBOutlet ChimneyLabel *chimneyOne;
@property (strong, nonatomic) IBOutlet ChimneyLabel *chimneyTwo;
@property (strong, nonatomic) IBOutlet ChimneyLabel *chimneyThree;
@property (strong, nonatomic) IBOutlet ChimneyLabel *chimneyFour;
@property (strong, nonatomic) IBOutlet ChimneyLabel *chimneyFive;
@property (strong, nonatomic) IBOutlet ChimneyLabel *chimneySix;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.chimneyOne.delegate = self;
    self.chimneyTwo.delegate = self;
    self.chimneyThree.delegate = self;
    self.chimneyFour.delegate = self;
    self.chimneyFive.delegate = self;
    self.chimneySix.delegate = self;
}

- (void)visitedNaughtyChildName:(NSString *)name;
{
    NSLog(@"Naughty child %@", name);

}
- (void)visitedNiceChildName:(NSString *)name;
{
    NSLog(@"Nice child %@", name);
    [self performSegueWithIdentifier:@"GotAToySegue" sender:self];
}

-(IBAction)unwindFromMerryChristmas:(UIStoryboardSegue *)segue
{
    
}
- (void)didReceiveMemoryWarning
{

    [super didReceiveMemoryWarning];
   
}

@end
