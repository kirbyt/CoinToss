//
//  main.m
//  CoinToss
//
//  Created by Kirby Turner on 3/3/11.
//  Copyright 2011 White Peak Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

   int randomValue = arc4random()%10;
   if (randomValue % 2) {
      NSLog(@"Heads");
   } else {
      NSLog(@"Tails");
   }

   [pool drain];
    return 0;
}

