//
//  MSDetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by Miguel Serrano on 15/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import "MSDetailViewController.h"

@interface MSDetailViewController ()

@end

@implementation MSDetailViewController

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
    
    self.textLabel.text = self.textField.text;
    self.updateText.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)updateButton:(UIButton *)sender {
    
    self.textLabel.text = self.updateText.text;
    [self.delegate didUpdateText:self.updateText.text];
}

#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.updateText resignFirstResponder];
    return YES;
}

@end
