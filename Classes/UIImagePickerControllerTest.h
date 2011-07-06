//
//  photppickAppDelegate.h
//  photppick
//
//  Created by la on 11-7-6.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PhotoPickerViewController;

@interface UIImagePickerControllerTest : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PhotoPickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PhotoPickerViewController *viewController;

@end

