//
//  FDCWebViewController.h
//  Maraton Messier
//
//  Created by Fran Delgado on 8/7/16.
//  Copyright © 2016 Fran Delgado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FDCMessierObjectModel.h"

@interface FDCWebViewController : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) FDCMessierObjectModel *model;

@property (weak, nonatomic) IBOutlet UIWebView *browser;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;

- (id) initWithModel: (FDCMessierObjectModel *) aModel;

@end
