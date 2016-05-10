//
//  ViewController.h
//  InOurPrime
//
//  Created by Nick Perkins on 4/29/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *firstNumber;
@property (weak, nonatomic) IBOutlet UITextField *secondNumber;
@property (weak, nonatomic) IBOutlet UIImageView *imageOne;
@property (weak, nonatomic) IBOutlet UIImageView *imageTwo;
@property (weak, nonatomic) IBOutlet UILabel *primeOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *primeTwoLabel;
@property (weak, nonatomic) IBOutlet UILabel *gcfLabel;
- (IBAction)testPrimeButton:(id)sender;



@end

