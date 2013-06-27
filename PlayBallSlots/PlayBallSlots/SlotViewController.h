//
//  SlotViewController.h
//  PlayBallSlots
//
//  Created by Jennifer Duffey on 5/24/13.
//  Copyright (c) 2013 Jennifer Duffey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlotViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *slotPickerView;

- (IBAction)spin:(id)sender;

@end
