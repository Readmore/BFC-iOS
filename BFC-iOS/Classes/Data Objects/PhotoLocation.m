//
//  PhotoLocation.m
//  BFC-iOS
//
//  Created by Matt Galloway on 10/7/11.
//  Copyright 2011 Architactile LLC. All rights reserved.
//

#import "PhotoLocation.h"

@implementation PhotoLocation 

@synthesize coordinate=_coordinate;
@synthesize longitude=_longitude;
@synthesize latitude=_latitude;
@synthesize title=_title;
@synthesize subject=_subject;
@synthesize description=_description;
@synthesize publisher=_publisher;
@synthesize photoDate=_photoDate;
@synthesize contentDMNumber=_contentDMNumber;
@synthesize verify=_verify;

#pragma mark - MKAnnotation Protocol Methods

- (NSString *)subtitle{
    return self.photoDate;
}

- (NSString *)title{
    return self.title;
}

- (CLLocationCoordinate2D)coordinate
{
    _coordinate.latitude = [self.latitude doubleValue];
    _coordinate.longitude = [self.longitude doubleValue];
    return _coordinate;
}


#pragma mark - Dealloc

-(void) dealloc {
    [_longitude release];
    [_latitude release];
    [_title release];
    [_subject release];
    [_description release];
    [_publisher release];
    [_photoDate release];
    [_contentDMNumber release];
    [_verify release];
    
    [super dealloc];
}


@end
