//
//  PhotoLocation.h
//  BFC-iOS
//
//  Created by Matt Galloway on 10/7/11.
//  Copyright 2011 Architactile LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface PhotoLocation : NSObject <MKAnnotation> {
    
}

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@property (nonatomic, retain) NSNumber *latitude;  // need to be double
@property (nonatomic, retain) NSNumber *longitude; // need to be double
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *subject;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSString *publisher;
@property (nonatomic, retain) NSString *photoDate;
@property (nonatomic, retain) NSString *contentDMNumber;
@property (nonatomic, retain) NSString *verify;



@end
