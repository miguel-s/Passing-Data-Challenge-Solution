//
//  MSViewController.m
//  Passing Data Challenge Solution
//
//  Created by Miguel Serrano on 15/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import "MSViewController.h"

@interface MSViewController ()

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([sender isKindOfClass:[UIButton class]]) {
        if([segue.destinationViewController isKindOfClass:[MSDetailViewController class]]) {
            MSDetailViewController *nextViewController = segue.destinationViewController;
            
            nextViewController.textField = self.textField;
            nextViewController.delegate = self;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MSDetailView Delegate

- (void)didUpdateText:(NSString *)text
{
    //[self dismissViewControllerAnimated:YES completion:nil];
    
    self.textField.text = text;
}

#pragma mark - UITextfield Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    return YES;
}

@end
