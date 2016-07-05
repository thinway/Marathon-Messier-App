//
//  FDCMessierObjectModel.m
//  Maraton Messier
//
//  Created by Fran Delgado on 5/7/16.
//  Copyright © 2016 Fran Delgado. All rights reserved.
//

#import "FDCMessierObjectModel.h"

#define NO_CODE_NUMBER -1
#define NO_NUMBER -1.0

@implementation FDCMessierObjectModel

#pragma mark - Class Methods
+(id) messierObjectWithNumber: (int) aMessierNumber
                    ngcNumber: (int) aNgcNumber
                   commonName: (NSString *) aCommonName
                   objectType: (NSString *) anObjectType
                     distance: (double) aDistance
                constellation: (NSString *) aConstellation
            apparentMagnitude: (double) anApparentMagnitude
                      webLink: (NSURL *) aWebLink
                        photo: (UIImage *) aPhoto
{
    return [[self alloc] initWithMessierNumber: aMessierNumber
                                     ngcNumber: aNgcNumber
                                    commonName: aCommonName
                                    objectType: anObjectType
                                      distance: aDistance
                                 constellation: aConstellation
                             apparentMagnitude: anApparentMagnitude
                                       webLink: aWebLink
                                         photo: aPhoto];
}

+(id) messierObjectWithNumber: (int) aMessierNumber
                   commonName: (NSString *) aCommonName
                   objectType: (NSString *) anObjectType
                constellation: (NSString *) aConstellation
{
    return [[self alloc] initWithMessierNumber: aMessierNumber
                                    commonName: aCommonName
                                    objectType: anObjectType
                                 constellation: aConstellation];
}

#pragma mark - Init

// Inicializador Designado
-(id) initWithMessierNumber: (int) aMessierNumber
                  ngcNumber: (int) aNgcNumber
                 commonName: (NSString *) aCommonName
                 objectType: (NSString *) anObjectType
                   distance: (double) aDistance
              constellation: (NSString *) aConstellation
          apparentMagnitude: (double) anApparentMagnitude
                    webLink: (NSURL *) aWebLink
                      photo: (UIImage *) aPhoto
{
    if ( self = [super init] ) {
        _messierNumber = aMessierNumber;
        _ngcNumber = aNgcNumber;
        _commonName = aCommonName;
        _objectType = anObjectType;
        _distance = aDistance;
        _constellation = aConstellation;
        _apparentMagnitude = anApparentMagnitude;
        _webLink = aWebLink;
        _photo = aPhoto;
    }
    
    return self;
}

// Inicializadores de conveniencia
-(id) initWithMessierNumber: (int) aMessierNumber
                 commonName: (NSString *) aCommonName
                 objectType: (NSString *) anObjectType
              constellation: (NSString *) aConstellation
{
    if ( self = [super init] ) {
        _messierNumber = aMessierNumber;
        _ngcNumber = NO_NUMBER;
        _commonName = aCommonName;
        _objectType = anObjectType;
        _distance = NO_CODE_NUMBER;
        _constellation = aConstellation;
        _apparentMagnitude = NO_CODE_NUMBER;
        _webLink = nil;
        _photo = nil;
    }
    
    return self;
}
@end
