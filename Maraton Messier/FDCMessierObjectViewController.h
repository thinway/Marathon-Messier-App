//
//  FDCMessierObjectViewController.h
//  Maraton Messier
//
//  Created by Fran Delgado on 5/7/16.
//  Copyright © 2016 Fran Delgado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FDCMessierObjectModel.h"

@interface FDCMessierObjectViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *messierLabel;
@property (weak, nonatomic) IBOutlet UILabel *ngcLabel;
@property (weak, nonatomic) IBOutlet UIImageView *messierImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *constellationLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *appMagLabel;
@property (weak, nonatomic) IBOutlet UILabel *notesLabel;

@property (strong, nonatomic) FDCMessierObjectModel * model;

-(id) initWithModel: (FDCMessierObjectModel *) aModel;

-(IBAction)displayWeb:(id)sender;

@end
