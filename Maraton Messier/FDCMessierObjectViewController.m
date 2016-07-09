//
//  FDCMessierObjectViewController.m
//  Maraton Messier
//
//  Created by Fran Delgado on 5/7/16.
//  Copyright © 2016 Fran Delgado. All rights reserved.
//

#import "FDCMessierObjectViewController.h"
#import "FDCWebViewController.h"

@implementation FDCMessierObjectViewController

-(id) initWithModel: (FDCMessierObjectModel *) aModel
{
    if ( self = [super initWithNibName:nil bundle:nil] ) {
        _model = aModel;
        self.title = aModel.commonName;
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self syncModelWithView];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationController.navigationBar.backgroundColor = [UIColor colorWithWhite: 0.70 alpha:1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Actions

-(IBAction)displayWeb:(id)sender
{
    //NSLog(@"Go to %@", self.model.webLink);
    
    // Se crea un webVC
    FDCWebViewController *webVC = [[FDCWebViewController alloc] initWithModel:self.model];
    
    // Hacemos un push
    [self.navigationController pushViewController:webVC animated:YES];
}

#pragma marks - Utils

- (void)syncModelWithView
{
    self.messierLabel.text = [NSString stringWithFormat:@"%d", self.model.messierNumber];
    self.ngcLabel.text = [NSString stringWithFormat:@"%d", self.model.ngcNumber];
    self.messierImage.image = self.model.photo;
    self.nameLabel.text = self.model.commonName;
    self.constellationLabel.text = self.model.constellation;
    self.distanceLabel.text = [NSString stringWithFormat:@"%.2lf", self.model.distance];
    self.typeLabel.text = self.model.objectType;
    self.appMagLabel.text = [NSString stringWithFormat:@"%.2lf", self.model.apparentMagnitude];
    self.notesLabel.text = self.model.notes;
}

@end
