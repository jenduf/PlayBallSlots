//
//  SlotViewController.m
//  PlayBallSlots
//
//  Created by Jennifer Duffey on 5/24/13.
//  Copyright (c) 2013 Jennifer Duffey. All rights reserved.
//

#import "SlotViewController.h"

@interface SlotViewController ()

@end

@implementation SlotViewController

- (void)viewDidAppear:(BOOL)animated
{
    [self spinReels];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
}

- (IBAction)spin:(id)sender
{
    [self spinReels];
}

- (void)spinReels
{
    [self.slotPickerView selectRow:50000 + (rand() % TOTAL_IMAGES) inComponent:0 animated:YES];
    [self.slotPickerView selectRow:50000 + (rand() % TOTAL_IMAGES) inComponent:1 animated:YES];
    [self.slotPickerView selectRow:50000 + (rand() % TOTAL_IMAGES) inComponent:2 animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIPickerView Delegate Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 1000000;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImage *slotImage = [UIImage imageNamed:[NSString stringWithFormat:@"slot_image_%i", row % TOTAL_IMAGES]];
    
    UIImageView *slotImageView = [[UIImageView alloc] initWithImage:slotImage];
    
    return slotImageView;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return PICKER_ROW_HEIGHT;
}

@end
