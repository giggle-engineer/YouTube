//
//  PSCAppDelegate.m
//  YouTube
//
//  Created by Chloe Stars on 11/1/12.
//  Copyright (c) 2012 Phantom Sun Creative. All rights reserved.
//

#import "PSCAppDelegate.h"
#import "PSCYouTubeAuthenticator.h"

@implementation PSCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
	[self authenticate];
}

#pragma mark Authentication

- (void)authenticate {
	PSCYouTubeAuthenticator *authenticator = [PSCYouTubeAuthenticator new];
	[authenticator setClientID:@"598067235549.apps.googleusercontent.com"];
	[authenticator setRedirectURL:[NSURL URLWithString:@"http://localhost:28247"]];
	NSURL *url = [authenticator URLToAuthorize];
	[[NSWorkspace sharedWorkspace] openURL:url];
}

@end
