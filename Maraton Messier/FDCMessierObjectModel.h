//
//  FDCMessierObjectModel.h
//  Maraton Messier
//
//  Created by Fran Delgado on 5/7/16.
//  Copyright © 2016 Fran Delgado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface FDCMessierObjectModel : NSObject

@property (nonatomic) int messierNumber;
@property (nonatomic) int ngcNumber;
@property (strong, nonatomic) NSString * commonName;
@property (strong, nonatomic) NSString * objectType;
@property (nonatomic) double distance; // In thousands of light years
@property (strong, nonatomic) NSString * constellation;
@property (nonatomic) double apparentMagnitude;
@property (strong, nonatomic) NSURL * webLink;
@property (strong, nonatomic) UIImage * photo;

// Constructores de conveniencia

+(id) messierObjectWithNumber: (int) aMessierNumber
                    ngcNumber: (int) aNgcNumber
                   commonName: (NSString *) aCommonName
                   objectType: (NSString *) anObjectType
                     distance: (double) aDistance
                constellation: (NSString *) aConstellation
            apparentMagnitude: (double) anApparentMagnitude
                      webLink: (NSURL *) aWebLink
                        photo: (UIImage *) aPhoto;

+(id) messierObjectWithNumber: (int) aMessierNumber
                   commonName: (NSString *) aCommonName
                   objectType: (NSString *) anObjectType
                constellation: (NSString *) aConstellation;

// Inicializador Designado
-(id) initWithMessierNumber: (int) aMessierNumber
                  ngcNumber: (int) aNgcNumber
                 commonName: (NSString *) aCommonName
                 objectType: (NSString *) anObjectType
                   distance: (double) aDistance
              constellation: (NSString *) aConstellation
          apparentMagnitude: (double) anApparentMagnitude
                    webLink: (NSURL *) aWebLink
                      photo: (UIImage *) aPhoto;

// Inicializadores de conveniencia
-(id) initWithMessierNumber: (int) aMessierNumber
                 commonName: (NSString *) aCommonName
                 objectType: (NSString *) anObjectType
              constellation: (NSString *) aConstellation;
@end
