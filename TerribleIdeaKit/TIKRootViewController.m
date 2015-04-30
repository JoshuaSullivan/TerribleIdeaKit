//
//  TIKRootViewController.m
//  TerribleIdeaKit
//
//  Created by Joshua Sullivan on 2/4/14.
//  Copyright (c) 2014 Joshua Sullivan. All rights reserved.
//

#import "TIKRootViewController.h"
#import "UIView+TIKPartyMode.h"
#import "UIView+TIKSpinterface.h"
#import "UIView+TIKTextMangler.h"

@interface TIKRootViewController ()

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *interfaceElements;

- (IBAction)partyModeTapped:(id)sender;
- (IBAction)spinterfaceTapped:(id)sender;
- (IBAction)creepingChaosTapped:(id)sender;

@end

@implementation TIKRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

- (IBAction)partyModeTapped:(id)sender
{
    [self.view.window discoInferno];
}

- (IBAction)spinterfaceTapped:(id)sender
{
    for (UIView *view in self.interfaceElements) {
        [view spinterfaceOfType:TIKSpinterfaceTypeRandomAxis];
    }
}

- (IBAction)creepingChaosTapped:(id)sender
{
    [self.view creepingChaos];
}


@end
