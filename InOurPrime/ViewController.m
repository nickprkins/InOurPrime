//
//  ViewController.m
//  InOurPrime
//
//  Created by Nick Perkins on 4/29/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

#import "ViewController.h"
#import "PrimeBrain.h"

@interface ViewController ()
- (IBAction)testPrimeButton:(id)sender;

@property PrimeBrain *brain;
@property NSArray *array1;
@property NSArray *array2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"In Our Prime";
    self.brain = [[PrimeBrain alloc]init];
    NSArray *array1 = [[NSArray alloc]init];
    NSArray *array2 = [[NSArray alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testPrimeButton:(id)sender {
    
    if (self.firstNumber.text.length > 0 && !(self.firstNumber.text == 0)) {
        
        NSArray *primeNumber1 = [self.brain isItPrime:([self.firstNumber.text intValue])];
        if (primeNumber1.count == 2) {
            //update label with contents in array and display check mark image
            NSString * primeNumbers = [[primeNumber1 valueForKey:@"description"] componentsJoinedByString:@","];
            self.primeOneLabel.text = primeNumbers;
            self.firstNumber.backgroundColor = [UIColor greenColor];
            self.imageOne.image = [UIImage imageNamed:@"yes"];
            
        }else{
            //Label reads nothing and x image displayed
            NSString * primeNumbers = [[primeNumber1 valueForKey:@"description"] componentsJoinedByString:@","];
            self.primeOneLabel.text = primeNumbers;
            self.firstNumber.backgroundColor = [UIColor redColor];
            self.imageOne.image = [UIImage imageNamed:@"no"];
        }
        
        self.array1 = [primeNumber1 copy];
    }
    
    if (self.secondNumber.text.length > 0 && !(self.secondNumber.text == 0)) {
        
        NSArray *primeNumber2 = [self.brain isItPrime:([self.secondNumber.text intValue])];
        if (primeNumber2.count == 2) {
            //update label with contents in array and display check mark image
            NSString * primeNumbers = [[primeNumber2 valueForKey:@"description"] componentsJoinedByString:@","];
            self.primeTwoLabel.text = primeNumbers;
            self.secondNumber.backgroundColor = [UIColor greenColor];
            self.imageTwo.image = [UIImage imageNamed:@"yes"];
            
        }else{
            //Label reads nothing and x image displayed
            NSString * primeNumbers = [[primeNumber2 valueForKey:@"description"] componentsJoinedByString:@","];
            self.primeTwoLabel.text = primeNumbers;
            self.secondNumber.backgroundColor = [UIColor redColor];
            self.imageTwo.image = [UIImage imageNamed:@"no"];
        }
        
        self.array2 = [primeNumber2 copy];
        
        NSMutableSet* set1 = [NSMutableSet setWithArray:self.array1];
        NSSet* set2 = [NSSet setWithArray:self.array2];
        [set1 intersectSet:set2]; //this will give you only the obejcts that are in both sets
        
        NSArray* result = [set1 allObjects];
        NSSortDescriptor* sortOrder = [NSSortDescriptor sortDescriptorWithKey: @"self"
                                                                    ascending: YES];
        NSArray *sortedArray = [result sortedArrayUsingDescriptors: [NSArray arrayWithObject: sortOrder]];
        
        if (!(result.count == 0)) {
            // equal
            self.gcfLabel.text = [[sortedArray lastObject] stringValue];
        }else{
            self.gcfLabel.text = @"None";
        }
        
    }
    
    
}
@end
