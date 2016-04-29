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
@end

@implementation PopUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:239.0f/255.0f green:109.0f/255.0f blue:59.0f/255.0f alpha:1.0f];
    [self.getNumberTextField becomeFirstResponder];
    
    
    if (self.getNumberTextField.text) {
        //do something
        
    }
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

@end
