//
//  CoinTosser.m
//  CoinToss
//
//  Created by Kirby Turner on 3/3/11.
//  Copyright 2011 White Peak Software Inc. All rights reserved.
//

#import "CoinTosser.h"


@implementation CoinTosser

@synthesize headsCount = headsCount_;
@synthesize tailsCount = tailsCount_;
@synthesize lastResult = lastResult_;

- (void)dealloc
{
   [lastResult_ release], lastResult_ = nil;
   [super dealloc];
}

- (id)init
{
   self = [super init];
   if (self) {
      // Initialization code here.
      headsCount_ = 0;
      tailsCount_ = 0;
      [self setLastResult:@""];
   }
   
   return self;
}

- (void)flip
{
   int randomValue = arc4random()%10;
   if (randomValue <= 5) {
      [self setLastResult:@"Heads"];
      [self setHeadsCount:[self headsCount] + 1];
   } else {
      [self setLastResult:@"Tails"];
      [self setTailsCount:[self tailsCount] + 1];
   }
   
}


@end
