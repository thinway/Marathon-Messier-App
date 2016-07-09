//
//  FDCWebViewController.m
//  Maraton Messier
//
//  Created by Fran Delgado on 8/7/16.
//  Copyright © 2016 Fran Delgado. All rights reserved.
//

#import "FDCWebViewController.h"

@interface FDCWebViewController ()

@end

@implementation FDCWebViewController

- (id) initWithModel: (FDCMessierObjectModel *) aModel
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        _model = aModel;
        self.title = @"Web";
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self displayURL:self.model.webLink];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (void)viewDidLoad
{
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

#pragma mark - UIWebViewDelegate

- (void) webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicatorView stopAnimating];
    [self.activityIndicatorView setHidden:YES];
}

#pragma mark - Utils

- (void) displayURL: (NSURL *) aURL
{
    self.browser.delegate = self;
    self.activityIndicatorView.hidden = NO;
    [self.activityIndicatorView startAnimating];
    [self.browser loadRequest:[NSURLRequest requestWithURL:aURL]];
}
@end
