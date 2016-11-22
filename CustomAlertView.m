//
//  CustomAlertView.m
//  MPlayer
//
//  Created by Techno Softwares on 26/10/16.
//  Copyright © 2016 Techno Softwares. All rights reserved.
//

#import "CustomAlertView.h"

@interface CustomAlertView ()

@end

@implementation CustomAlertView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBar.hidden = YES;
    global = [Global sharedInstance];
    MVYSideMenuController *sideMenu = [self sideMenuController];
    if (sideMenu) {
        [sideMenu disable];
    }
    self.viewRed.layer.cornerRadius = 10;
    self.viewRed.clipsToBounds = true;
    
    self.view_back.layer.cornerRadius = 10;
    self.view_back.clipsToBounds = true;
    self.view_back.backgroundColor = [UIColor whiteColor];
    
    if (IS_IPAD ) 
    {
        self.img_red.layer.cornerRadius = 46.5;
        self.img_red.clipsToBounds = true;
        
        self.img_main.layer.cornerRadius = 43.5;
        self.img_main.clipsToBounds = true;
    }
    else
    {
        self.img_red.layer.cornerRadius = 31;
        self.img_red.clipsToBounds = true;
        
        self.img_main.layer.cornerRadius = 29;
        self.img_main.clipsToBounds = true;
        
    }
//    lbl_isonly.font =  [UIFont fontWithName:@"HelveticaNeue-Bold" size:18];
    
    NSString *itemvalue = [[NSUserDefaults standardUserDefaults] stringForKey:@"Item_value"];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@ is only available",itemvalue] attributes:nil];
    NSRange linkRange = NSMakeRange(0, 8); // for the word "link" in the string above
    
//    UIFont *lableFont =   UIFont(name: "HelveticaNeue-Bold", size: 18);
//        let attributes :Dictionary = [NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:18]]
    
    NSDictionary *linkAttributes = @{ NSForegroundColorAttributeName : [UIColor redColor],NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:20]};
    
    [attributedString setAttributes:linkAttributes range:linkRange];
    
    // Assign attributedText to UILabel
    lbl_isonly.attributedText = attributedString;

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
     switch ((int)[UIScreen mainScreen].bounds.size.height) {
        case 480:
        {
            self.btn_buynow.layer.cornerRadius = 5;
             self.btn_maybelater.layer.cornerRadius = 5;
            if(!isConstraintUpdated)
            {
                //_lblListOfferings.font = [UIFont fontWithName:@"Euphemia UCAS" size:17.0];
                isConstraintUpdated = YES;
            }
            break;
        }
        case 568:
        {
            self.btn_buynow.layer.cornerRadius = 5;
            self.btn_maybelater.layer.cornerRadius = 5;
            
            if(!isConstraintUpdated)
            {
                isConstraintUpdated = YES;
            }
            break;
        }
        case 667:
        {
            self.btn_buynow.layer.cornerRadius = 5;
            self.btn_maybelater.layer.cornerRadius = 5;
            if(!isConstraintUpdated)
            {
                
                
                isConstraintUpdated = YES;
                
            }
            break;
        }
        case 736:
        {
            self.btn_buynow.layer.cornerRadius = 8;
            self.btn_maybelater.layer.cornerRadius = 8;
            if(!isConstraintUpdated)
            {
                
//                self.viewWPOPH_constraint.constant = self.viewWPOPH_constraint.constant *1.3 ;
//                self.viewWPOPW_constraint.constant = self.viewWPOPW_constraint.constant *1.3 ;
//                
//                self.imgRedHconstraint.constant = self.imgRedHconstraint.constant +31 ;
//                self.imgRedWconstraint.constant = self.imgRedWconstraint.constant + 31;
//                self.imgMainWconstraint.constant = self.imgMainWconstraint.constant + 29;
//                self.imgMainHconstraint.constant = self.imgMainHconstraint.constant  +29;
//                
//                self.topviewCons.constant = self.topviewCons.constant + 15;
//                self.topredviewcons.constant = self.topredviewcons.constant + 15;
//                
//                
//                
//                self.isonly_topConstraint.constant = self.isonly_topConstraint.constant +15;
//                                pro_top_const.constant =  pro_top_const.constant + 150;
//                                maybe_top_const.constant = maybe_top_const.constant + 20;
//                                buynow_top_const.constant = buynow_top_const.constant + 20;
//                                ads_top_const.constant = ads_top_const.constant +20 ;
//                                view1_Hconst.constant = view1_Hconst.constant + 20;
//                                view2_Hconst.constant = view2_Hconst.constant + 20;
//                                view3_Hconst.constant = view3_Hconst.constant + 20;
//                                view5_Hconst.constant = view5_Hconst.constant + 20;
//                                view4_Hconst.constant = view4_Hconst.constant + 20;
//                                btn_maybe_Hconst.constant = btn_maybe_Hconst.constant + 20;
//                                btn_buynow_Hconst.constant = btn_buynow_Hconst.constant + 20;

                
                isConstraintUpdated = YES;
                
            }
            break;
        }
        case 1024:
        {
           
            self.btn_buynow.layer.cornerRadius = 8;
            self.btn_maybelater.layer.cornerRadius = 8;
            if(!isConstraintUpdated)
            {
                
                self.viewWPOPH_constraint.constant = self.viewWPOPH_constraint.constant *1.7 ;
                self.viewWPOPW_constraint.constant = self.viewWPOPW_constraint.constant *1.7 ;
                
                self.imgRedHconstraint.constant = self.imgRedHconstraint.constant +31 ;
                self.imgRedWconstraint.constant = self.imgRedWconstraint.constant + 31;
                self.imgMainWconstraint.constant = self.imgMainWconstraint.constant + 29;
                self.imgMainHconstraint.constant = self.imgMainHconstraint.constant  +29;
                
                self.topviewCons.constant = self.topviewCons.constant + 15;
                self.topredviewcons.constant = self.topredviewcons.constant + 15;
               
//                self.isonly_topConstraint.constant = self.isonly_topConstraint.constant + 15;
//                pro_top_const.constant = 100;
//                maybe_top_const.constant = maybe_top_const.constant + 15;
//                buynow_top_const.constant = buynow_top_const.constant + 15;
//                ads_top_const.constant = ads_top_const.constant + 15;
//                view1_Hconst.constant = view1_Hconst.constant + 15;
//                view2_Hconst.constant = view2_Hconst.constant + 15;
//                view3_Hconst.constant = view3_Hconst.constant + 15;
//                view5_Hconst.constant = view5_Hconst.constant + 15;
//                view4_Hconst.constant = view4_Hconst.constant + 15;
//                btn_maybe_Hconst.constant = btn_maybe_Hconst.constant + 15;
//                btn_buynow_Hconst.constant = btn_buynow_Hconst.constant + 15;
                

                
                isConstraintUpdated = YES;
                
            }
            break;
        }
            
        default:
            break;
    }
    
    [self.view layoutIfNeeded];
}



- (IBAction)btn_close_clicked:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (IBAction)btn_maybelater_clicked:(id)sender
{
     [self dismissViewControllerAnimated:NO completion:nil];
    
    id<CustomAlertDelegate> strongDelegate = self.delegate;
    if ([strongDelegate respondsToSelector:@selector(CustomAlertViewController:didChooseValue:)]) {
        [strongDelegate CustomAlertViewController:self didChooseValue:sender];
    }
    
}
- (IBAction)btn_buynow_clicked:(id)sender
{
     [self dismissViewControllerAnimated:NO completion:nil];
    
    id<CustomAlertDelegate> strongDelegate = self.delegate;
    if ([strongDelegate respondsToSelector:@selector(CustomAlertViewController:didChooseValue:)]) {
        [strongDelegate CustomAlertViewController:self didChooseValue:sender];
}
    
}
- (void)handleCloseButton:(id)sender {
    // Xcode will complain if we access a weak property more than
    // once here, since it could in theory be nilled between accesses
    // leading to unpredictable results. So we'll start by taking
    // a local, strong reference to the delegate.
    id<CustomAlertDelegate> strongDelegate = self.delegate;
    
    // Our delegate method is optional, so we should
    // check that the delegate implements it
    if ([strongDelegate respondsToSelector:@selector(CustomAlertViewController:didChooseValue:)]) {
        [strongDelegate CustomAlertViewController:self didChooseValue:sender];
    }
}

@end
