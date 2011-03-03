//
//  main.m
//  CoinToss
//
//  Created by Kirby Turner on 3/3/11.
//  Copyright 2011 White Peak Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoinTosser.h"

int main (int argc, const char * argv[])
{

   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

   CoinTosser *tosser = [[CoinTosser alloc] init];
   for (int index = 0; index < 10; index++ ) {
      [tosser flip];
      NSLog(@"%@", [tosser lastResult]);
   }
   NSLog(@"Tally: heads %i tails %i", [tosser headsCount], [tosser tailsCount]);
   [tosser release];

   [pool drain];
    return 0;
}

