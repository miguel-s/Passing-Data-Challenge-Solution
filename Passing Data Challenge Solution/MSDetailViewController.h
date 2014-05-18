//
//  MSDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Miguel Serrano on 15/05/14.
//  Copyright (c) 2014 Miguel Serrano. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MSDetailViewDelegate <NSObject>

@required

- (void)didUpdateText: (NSString *)text;

@end

@interface MSDetailViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) id <MSDetailViewDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) IBOutlet UITextField *updateText;

@property (strong, nonatomic) UITextField *textField;

- (IBAction)updateButton:(UIButton *)sender;

@end
