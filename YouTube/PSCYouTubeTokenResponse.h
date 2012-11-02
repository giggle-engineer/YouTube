//
//  PSCYouTubeTokenResponse.h
//  YouTube
//
//  Created by Chloe Stars on 11/2/12.
//  Copyright (c) 2012 Phantom Sun Creative. All rights reserved.
//

#import "HTTPResponseHandler.h"

@interface PSCYouTubeTokenResponse : HTTPResponseHandler

- (void)setAuthToken:(NSString *)apiKey;

@end
