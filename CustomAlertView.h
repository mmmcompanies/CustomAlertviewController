//
//  CustomAlertView.h
//  MPlayer
//
//  Created by Techno Softwares on 26/10/16.
//  Copyright © 2016 Techno Softwares. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol CustomAlertDelegate;

@interface CustomAlertView : UIViewController
{
    
    Global *global;
    BOOL isConstraintUpdated;
    IBOutlet UILabel *lbl_isonly;
    
    IBOutlet NSLayoutConstraint *pro_top_const;
    IBOutlet NSLayoutConstraint *maybe_top_const;
    IBOutlet NSLayoutConstraint *buynow_top_const;
    IBOutlet NSLayoutConstraint *ads_top_const;
    IBOutlet NSLayoutConstraint *view1_Hconst;
    IBOutlet NSLayoutConstraint *view2_Hconst;
    IBOutlet NSLayoutConstraint *view3_Hconst;
    IBOutlet NSLayoutConstraint *view5_Hconst;
    IBOutlet NSLayoutConstraint *view4_Hconst;
    IBOutlet NSLayoutConstraint *btn_maybe_Hconst;
    IBOutlet NSLayoutConstraint *btn_buynow_Hconst;
   
    
}

@property (nonatomic, weak) id<CustomAlertDelegate> delegate;


@property (strong, nonatomic) IBOutlet UIView *viewlogin_popup;
@property (strong, nonatomic) IBOutlet UIView *viewRed;
@property (strong, nonatomic) IBOutlet UIImageView *img_red;
@property (strong, nonatomic) IBOutlet UIView *view_back;
@property (strong, nonatomic) IBOutlet UIImageView *img_main;
@property (strong, nonatomic) IBOutlet UIView *view_whitepopup;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *viewWPOPW_constraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *viewWPOPH_constraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *imgRedWconstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *imgRedHconstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *imgMainWconstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *imgMainHconstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *topviewCons;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *topredviewcons;

@property (strong, nonatomic) IBOutlet UIButton *btn_buynow;
@property (strong, nonatomic) IBOutlet UIButton *btn_maybelater;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *isonly_topConstraint;

- (IBAction)btn_close_clicked:(id)sender;
- (IBAction)btn_maybelater_clicked:(id)sender;

@end



@protocol CustomAlertDelegate <NSObject>

- (void)CustomAlertViewController:(CustomAlertView*)viewController
             didChooseValue:(UIButton*)sender;

@end
