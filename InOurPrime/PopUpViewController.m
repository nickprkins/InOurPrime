//
//  PopUpViewController.m
//  InOurPrime
//
//  Created by Nick Perkins on 4/29/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

#import "PopUpViewController.h"
#import "ViewController.h"

@interface PopUpViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *getNumberTextField;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;

-(void)saveText;
@end

@implementation PopUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:250.0f/255.0f green:139.0f/255.0f blue:96.0f/255.0f alpha:1.0f];
    self.getNumberTextField.backgroundColor = [UIColor colorWithRed:250.0f/255.0f green:139.0f/255.0f blue:96.0f/255.0f alpha:1.0f];
    self.getNumberTextField.textColor = [UIColor colorWithRed:239.0f/255.0f green:109.0f/255.0f blue:59.0f/255.0f alpha:1.0f];
    [self.getNumberTextField becomeFirstResponder];
    
    
    
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

-(void) saveText{
    
    //Send the text to the textField in first ViewController
    
    
}

@end
