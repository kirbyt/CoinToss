//
//  CoinTosser.h
//  CoinToss
//
//  Created by Kirby Turner on 3/3/11.
//  Copyright 2011 White Peak Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CoinTosser : NSObject 
{
@private
   int headsCount_;
   int tailsCount_;
   NSString *lastResult_;
}

@property (nonatomic, assign) int headsCount;
@property (nonatomic, assign) int tailsCount;
@property (nonatomic, copy) NSString *lastResult;

- (void)flip;

@end
