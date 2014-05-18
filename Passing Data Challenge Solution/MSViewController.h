//
//  MSViewController.h
//  Passing Data Challenge Solution
//
//  Created by Miguel Serrano on 15/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSDetailViewController.h"

@interface MSViewController : UIViewController <MSDetailViewDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;

@end
