//
//  NZViewController.m
//  NZLabel
//
//  Created by Bruno Furtado on 03/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZViewController.h"
#import "NZLabel.h"

static NSString* const kHelvetica = @"Helvetica";
static NSString* const kHelveticaBold = @"Helvetica-Bold";
static NSString* const kHelveticaLight = @"Helvetica-Light";
static int const kFontSizeDefault = 17;



@interface NZViewController ()

@property (strong, nonatomic) IBOutlet NZLabel *lbBlack;
@property (strong, nonatomic) IBOutlet NZLabel *lbBlue;
@property (strong, nonatomic) IBOutlet NZLabel *lbGreen;
@property (strong, nonatomic) IBOutlet NZLabel *lbRed;

@end



@implementation NZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIFont *boldFont = [UIFont fontWithName:kHelveticaBold size:kFontSizeDefault];
    UIColor *blackColor = [UIColor blackColor];
    
    NSString *loren = @"Lorem";
    NSString *ipsum = @"ipsum";
    
    [self.lbBlack setBoldFontToString:loren];
    
    [self.lbBlue setFontColor:blackColor string:ipsum];
    
    [self.lbGreen setFont:boldFont string:ipsum];
    [self.lbGreen setFontColor:blackColor string:ipsum];
}

@end
