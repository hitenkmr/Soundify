//
//  SFSideMenuController.swift
//  Soundify
//
//  Created by MaahiHiten on 21/10/16.
//  Copyright © 2016 MaahiHiten. All rights reserved.
//

import UIKit

struct SFSideMenuNotifications {
    static let kSFSideMenuControllerWillShowLeftViewNotification    = "kSFSideMenuControllerWillShowLeftViewNotification"
    
    static let kSFSideMenuControllerWillDismissLeftViewNotification = "kSFSideMenuControllerWillDismissLeftViewNotification"
    
    static let kSFSideMenuControllerDidShowLeftViewNotification     = "kSFSideMenuControllerDidShowLeftViewNotification"
    
    static let kSFSideMenuControllerDidDismissLeftViewNotification  = "kSFSideMenuControllerDidDismissLeftViewNotification"
    
    static let kSFSideMenuControllerWillShowRightViewNotification    = "kSFSideMenuControllerWillShowRightViewNotification"
    
    static let kSFSideMenuControllerWillDismissRightViewNotification = "kSFSideMenuControllerWillDismissRightViewNotification"
    
    static let kSFSideMenuControllerDidShowRightViewNotification     = "kSFSideMenuControllerDidShowRightViewNotification"
    
    static let kSFSideMenuControllerDidDismissRightViewNotification  = "kSFSideMenuControllerDidDismissRightViewNotification"
    
}

class LGSideMenuAlwaysVisibleOptions{
    
    static  let LGSideMenuAlwaysVisibleOnNone           = 0
    static  let LGSideMenuAlwaysVisibleOnPadLandscape   = 1 << 0
    static  let LGSideMenuAlwaysVisibleOnPadPortrait    = 1 << 1
    static  let LGSideMenuAlwaysVisibleOnPhoneLandscape = 1 << 2
    static  let LGSideMenuAlwaysVisibleOnPhonePortrait  = 1 << 3
    static  let LGSideMenuAlwaysVisibleOnAll            = 1 << 4
}

class LGSideMenuStatusBarVisibleOptions{
    
    static  let LGSideMenuStatusBarVisibleOnNone           = 0
    static  let LGSideMenuStatusBarVisibleOnPadLandscape   = 1 << 0
    static  let LGSideMenuStatusBarVisibleOnPadPortrait    = 1 << 1
    static  let LGSideMenuStatusBarVisibleOnPhoneLandscape = 1 << 2
    static  let GSideMenuStatusBarVisibleOnPhonePortrait   = 1 << 3
    static  let LGSideMenuStatusBarVisibleOnAll            = 1 << 4
}

enum LGSideMenuPresentationStyle : Int{
    
   case LGSideMenuPresentationStyleSlideAbove      = 0
   case LGSideMenuPresentationStyleSlideBelow      = 1
   case LGSideMenuPresentationStyleScaleFromBig    = 2
   case LGSideMenuPresentationStyleScaleFromLittle = 3
}

class LGSideMenuSwipeGestureArea{
    
    static let LGSideMenuSwipeGestureAreaBorders   = 0
    static let LGSideMenuSwipeGestureAreaFull      = 1 << 4
}

class SFSideMenuController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    required init?(coder aDecoder: NSCoder){
        
        // self.setupDefaultProperties
        // self setupDefaults
        
        super.init(coder: aDecoder)
    }
    
    func initWithRootViewController(rootViewController : UIViewController) -> Any {
        // self.setupDefaultProperties
        // self setupDefaults
        
    // self.rootVC = rootViewController;
        
        return self
    }
    
    /*
     - (id)initWithCoder:(NSCoder *)aDecoder
     {
     self = [super initWithCoder:aDecoder];
     if (self)
     {
     [self setupDefaultProperties];
     }
     return self;
     }
     
     - (void)awakeFromNib
     {
     [super awakeFromNib];
     
     [self setupDefaults];
     }*/
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        // self.setupDefaults
    }

    func setupDefaultProperties() {
//        self.leftViewAnimationSpeed = 0.5;
//        self.rightViewAnimationSpeed = 0.5;
//        
//        self.leftViewHidesOnTouch = YES;
//        self.rightViewHidesOnTouch = YES;
//        
//        self.leftViewSwipeGestureEnabled = YES;
//        self.rightViewSwipeGestureEnabled = YES;
//        
//        self.rootViewLayerShadowColor = [UIColor colorWithWhite:0.f alpha:0.5];
//        self.rootViewLayerShadowRadius = 5.f;
//        
//        self.leftViewLayerShadowColor = [UIColor colorWithWhite:0.f alpha:0.5];
//        self.leftViewLayerShadowRadius = 5.f;
//        
//        self.rightViewLayerShadowColor = [UIColor colorWithWhite:0.f alpha:0.5];
//        self.rightViewLayerShadowRadius = 5.f;
    }
    
    func setupDefaults() {
        self.view.clipsToBounds = true
        
       // self.shouldShowLeftView = true
       // self.shouldShowRightView = true

     
         //self.backgroundImageViewForLeftView = UIImageView.new
         //self.backgroundImageViewForLeftView.hidden = true
        // self.backgroundImageViewForLeftView.contentMode = UIViewContentMode.scaleAspectFill
        // self.backgroundImageViewForLeftView.backgroundColor = UIColor.clear
        // self.backgroundImageViewForLeftView.clipsToBounds = true
        // self.view.addSubview:self.backgroundImageViewForLeftView
         
//         self.backgroundImageViewForRightView = UIImageView.new
//         self.backgroundImageViewForRightView.hidden = YES;
//        self.backgroundImageViewForRightView.contentMode = UIViewContentModeScaleAspectFill;
//        self.backgroundImageViewForRightView.backgroundColor = [UIColor clearColor];
//         self.backgroundImageViewForRightView.clipsToBounds = YES;
//         self.view.addSubview:self.backgroundImageViewForRightView
        
//         self.rootViewStyleView = UIView.new
//         self.rootViewStyleView.hidden = true
//         self.rootViewStyleView.backgroundColor = UIColor.black
//         self.rootViewStyleView.layer.masksToBounds = false;
//         self.rootViewStyleView.layer.shadowOffset = CGSizeZero;
//         self.rootViewStyleView.layer.shadowOpacity = 1.0;
//         self.rootViewStyleView.layer.shouldRasterize = true;
//         self.view.addSubview:self.rootViewStyleView
        
//         if (self.rootVC != nil)
//         {
//         self.addChildViewController:self.rootVC
//         self.view.addSubview:self.rootVC.view
//         }
//         
         // -----
         
        // self.gesturesCancelsTouchesInView = true;
        
//        var tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(tapGesture))
//        
//         tapGesture.delegate = self;
//         tapGesture.numberOfTapsRequired = 1;
//         tapGesture.numberOfTouchesRequired = 1;
//         tapGesture.cancelsTouchesInView = NO;
//         self.view.addGestureRecognizer:tapGesture
        
        //self.panGesture = UIPanGestureRecognizer.init(target: self, action: #selector(panGesture))
         //self.panGesture.minimumNumberOfTouches = 1
        // self.panGesture.maximumNumberOfTouches = 1
        // self.panGesture.cancelsTouchesInView = true
        // self.view.addGestureRecognizer:self.panGesture

    }
    
}
     /*

     
     #pragma mark - Dealloc
     
     - (void)dealloc
     {
     //
     }
     
     #pragma mark - Appearing
     
     - (void)viewWillLayoutSubviews
     {
     [super viewWillLayoutSubviews];
     
     CGSize size = self.view.frame.size;
     
     if (kLGSideMenuSystemVersion < 8.0)
     {
     if (kLGSideMenuStatusBarOrientationIsPortrait)
     size = CGSizeMake(MIN(size.width, size.height), MAX(size.width, size.height));
     else
     size = CGSizeMake(MAX(size.width, size.height), MIN(size.width, size.height));
     }
     
     if (!CGSizeEqualToSize(_savedSize, size))
     {
     BOOL appeared = !CGSizeEqualToSize(_savedSize, CGSizeZero);
     
     _savedSize = size;
     
     // -----
     
     [self colorsInvalidate];
     [self rootViewLayoutInvalidateWithPercentage:(self.isLeftViewShowing || self.isRightViewShowing ? 1.f : 0.f)];
     [self leftViewLayoutInvalidateWithPercentage:(self.isLeftViewShowing ? 1.f : 0.f)];
     [self rightViewLayoutInvalidateWithPercentage:(self.isRightViewShowing ? 1.f : 0.f)];
     [self hiddensInvalidateWithDelay:(appeared ? 0.25 : 0.0)];
     }
     }
     
     #pragma mark -
     
     - (BOOL)shouldAutorotate
     {
     return (kLGSideMenuIsMenuShowing ? _currentShouldAutorotate : (_rootVC ? _rootVC.shouldAutorotate : YES));
     }
     
     - (BOOL)prefersStatusBarHidden
     {
     return (kLGSideMenuIsMenuShowing ? _currentPreferredStatusBarHidden : (_rootVC ? _rootVC.prefersStatusBarHidden : (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation) && UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)));
     }
     
     - (UIStatusBarStyle)preferredStatusBarStyle
     {
     return (kLGSideMenuIsMenuShowing ? _currentPreferredStatusBarStyle : (_rootVC ? _rootVC.preferredStatusBarStyle : UIStatusBarStyleDefault));
     }
     
     - (UIStatusBarAnimation)preferredStatusBarUpdateAnimation
     {
     UIStatusBarAnimation animation = UIStatusBarAnimationNone;
     
     if (self.isWaitingForUpdateStatusBar)
     {
     _waitingForUpdateStatusBar = NO;
     
     animation = _currentPreferredStatusBarUpdateAnimation;
     }
     else if (_rootVC)
     animation = _rootVC.preferredStatusBarUpdateAnimation;
     
     return animation;
     }
     
     - (void)statusBarAppearanceUpdate
     {
     #if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_9_0
     if (![[[NSBundle mainBundle] objectForInfoDictionaryKey:@"UIViewControllerBasedStatusBarAppearance"] boolValue])
     {
     [[UIApplication sharedApplication] setStatusBarHidden:_currentPreferredStatusBarHidden withAnimation:_currentPreferredStatusBarUpdateAnimation];
     [[UIApplication sharedApplication] setStatusBarStyle:_currentPreferredStatusBarStyle animated:_currentPreferredStatusBarUpdateAnimation];
     }
     #endif
     }
*/


