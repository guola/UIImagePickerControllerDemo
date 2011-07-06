//
//  photppickViewController.m
//  photppick
//
//  Created by la on 11-7-6.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PhotoPickerViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import "UIImagePickerControllerTest.h"

@implementation PhotoPickerViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


//*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
//	UIImagePickerController *imagePicker = [[UIImagePickerController alloc] initWithRootViewController:self];
//	UIImagePickerController *imagePicker =[[UIImagePickerController alloc] init];
//	imagePicker.delegate = self;
//	
//	UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:imagePicker];
//	[imagePicker release];
//	[popover presentPopoverFromRect:CGRectMake(100, 100.0, 0.0, 0.0) 
//							 inView:self.view
//		   permittedArrowDirections:UIPopoverArrowDirectionAny 
//						   animated:YES];
	
	
//	if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum]) {
//		UIImagePickerController *picker = [[UIImagePickerController alloc]init];
//		
////		picker.delegate = self;
////		picker.allowsImageEditing = YES;
//		picker.allowsEditing = YES;
//		picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
//		
//		UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:picker];
//		[popover presentPopoverFromRect:CGRectMake(0, 0, 300, 300) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
////		self.popoverController = popover;
//		
//		[popover release];
//		[picker release];
//	}
	
//	[self choosePictureFromLibrary:nil];
	
	
//	UIImagePickerController* picker = [[UIImagePickerController alloc] init]; 
//	picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary; 
//	picker.delegate = self; 
//	
//	UIPopoverController *popoverController = [[UIPopoverController alloc] initWithContentViewController:picker];
////	self.popoverController = popover;          
//	popoverController.delegate = self;
//	[popoverController presentPopoverFromRect:self.view.frame
//									   inView:self.view
//					 permittedArrowDirections:UIPopoverArrowDirectionAny
//									 animated:YES];
//	[picker release];


//		[self startCameraControllerFromViewController: self
//										usingDelegate: self];
//	
//	[self startUIImagePickerControllerFromViewController: self
//									usingDelegate: self];
//	
//	[self startSavedPhotosAlbumControllerFromViewController: self
//										   usingDelegate: self];
	
	
	
//	[self startMediaBrowserFromViewController:self usingDelegate:self];
	
	UIButton * btn =[UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn.frame=CGRectMake(200.0f, 200.0f, 150.0f, 60.0f);
	[btn setTitle:@"imagePicker01" forState:UIControlStateNormal];
	[btn addTarget:self action:@selector(imagePicker01) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btn];

	UIButton * btn1 =[UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn1.frame=CGRectMake(200.0f, 300.0f, 150.0f, 60.0f);
	[btn1 setTitle:@"startCameraControllerFromViewController" forState:UIControlStateNormal];
	[btn1 addTarget:self action:@selector(startCameraControllerFromViewController) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btn1];

	UIButton * btn2 =[UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn2.frame=CGRectMake(200.0f, 400.0f, 150.0f, 60.0f);
	[btn2 setTitle:@"startUIImagePickerControllerFromViewController" forState:UIControlStateNormal];
	[btn2 addTarget:self action:@selector(startUIImagePickerControllerFromViewController) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btn2];

	UIButton * btn3 =[UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn3.frame=CGRectMake(200.0f, 500.0f, 150.0f, 60.0f);
	[btn3 setTitle:@"startSavedPhotosAlbumControllerFromViewController" forState:UIControlStateNormal];
	[btn3 addTarget:self action:@selector(startSavedPhotosAlbumControllerFromViewController) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btn3];
	
	UIButton * btn4 =[UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn4.frame=CGRectMake(200.0f, 600.0f, 150.0f, 60.0f);
	[btn4 setTitle:@"startMediaBrowserFromViewController" forState:UIControlStateNormal];
	[btn4 addTarget:self action:@selector(startMediaBrowserFromViewController) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btn4];	
	
}
//*/
-(void)startCameraControllerFromViewController
{
	[self startCameraControllerFromViewController: self
	 								usingDelegate: self];

}
-(void)startUIImagePickerControllerFromViewController
{
	[self startUIImagePickerControllerFromViewController: self
										   usingDelegate: self];
	
}

-(void)startSavedPhotosAlbumControllerFromViewController
{
	[self startSavedPhotosAlbumControllerFromViewController: self
										   usingDelegate: self];
	
}

-(void)startMediaBrowserFromViewController
{
	[self startMediaBrowserFromViewController: self
										   usingDelegate: self];
	
}


-(void)imagePicker01
{
	UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
	imagePicker.delegate = self;
	imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:imagePicker];
	[popover presentPopoverFromRect:CGRectMake(0.0, 0.0, 400.0, 400.0) 
							 inView:self.view
		   permittedArrowDirections:UIPopoverArrowDirectionAny 
						   animated:YES];
}
- (BOOL) startMediaBrowserFromViewController: (UIViewController*) controller
							   usingDelegate: (id <UIImagePickerControllerDelegate,
											   UINavigationControllerDelegate>) delegate {
	
    if (([UIImagePickerController isSourceTypeAvailable:
		  UIImagePickerControllerSourceTypeSavedPhotosAlbum] == NO)
		|| (delegate == nil)
		|| (controller == nil))
        return NO;
	
    UIImagePickerController *mediaUI = [[UIImagePickerController alloc] init];
    mediaUI.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
	
    // Displays saved pictures and movies, if both are available, from the
    // Camera Roll album.
    mediaUI.mediaTypes =
	[UIImagePickerController availableMediaTypesForSourceType:
	 UIImagePickerControllerSourceTypeSavedPhotosAlbum];
	
    // Hides the controls for moving & scaling pictures, or for
    // trimming movies. To instead show the controls, use YES.
    mediaUI.allowsEditing = NO;
    mediaUI.delegate = delegate;
    [controller presentModalViewController: mediaUI animated: YES];
	
//	[controller.view addSubview:mediaUI.view];
	
//	UIPopoverController * pc=[[UIPopoverController alloc] ini
//							  
//							  //:mediaUI];
//	[pc presentPopoverFromRect:self.view.frame
//	 									   inView:self.view
//	 					 permittedArrowDirections:UIPopoverArrowDirectionAny
//	 									 animated:YES];
	 
    return YES;
}


- (void) imagePickerController: (UIImagePickerController *) picker
 didFinishPickingMediaWithInfo: (NSDictionary *) info {
	
    NSString *mediaType = [info objectForKey: UIImagePickerControllerMediaType];
    UIImage *originalImage, *editedImage, *imageToUse;
	
    // Handle a still image picked from a photo album
    if (CFStringCompare ((CFStringRef) mediaType, kUTTypeImage, 0)
		== kCFCompareEqualTo) {
		
        editedImage = (UIImage *) [info objectForKey:
								   UIImagePickerControllerEditedImage];
        originalImage = (UIImage *) [info objectForKey:
									 UIImagePickerControllerOriginalImage];
		
        if (editedImage) {
            imageToUse = editedImage;
        } else {
            imageToUse = originalImage;
        }
        // Do something with imageToUse
    }
	
    // Handle a movied picked from a photo album
    if (CFStringCompare ((CFStringRef) mediaType, kUTTypeMovie, 0)
		== kCFCompareEqualTo) {
		
        NSString *moviePath = [[info objectForKey:
								UIImagePickerControllerMediaURL] path];
		
        // Do something with the picked movie available at moviePath
    }
	
    [[picker parentViewController] dismissModalViewControllerAnimated: YES];
    [picker release];
}



- (BOOL) startSavedPhotosAlbumControllerFromViewController: (UIViewController*) controller
										  usingDelegate: (id <UIImagePickerControllerDelegate,
														  UINavigationControllerDelegate>) delegate {
	
    if (([UIImagePickerController isSourceTypeAvailable:
		  UIImagePickerControllerSourceTypeSavedPhotosAlbum] == NO)
		|| (delegate == nil)
		|| (controller == nil))
        return NO;
	
	
    UIImagePickerController *cameraUI = [[UIImagePickerController alloc] init];
    cameraUI.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
	
    // Displays a control that allows the user to choose picture or
    // movie capture, if both are available:
    cameraUI.mediaTypes =
	[UIImagePickerController availableMediaTypesForSourceType:
	 UIImagePickerControllerSourceTypeSavedPhotosAlbum];
	
    // Hides the controls for moving & scaling pictures, or for
    // trimming movies. To instead show the controls, use YES.
    cameraUI.allowsEditing = NO;
	
    cameraUI.delegate = delegate;
	
    [controller presentModalViewController: cameraUI animated: YES];
    return YES;
}




- (BOOL) startUIImagePickerControllerFromViewController: (UIViewController*) controller
								   usingDelegate: (id <UIImagePickerControllerDelegate,
												   UINavigationControllerDelegate>) delegate {
	
    if (([UIImagePickerController isSourceTypeAvailable:
		  UIImagePickerControllerSourceTypePhotoLibrary] == NO)
		|| (delegate == nil)
		|| (controller == nil))
        return NO;
	
	
    UIImagePickerController *cameraUI = [[UIImagePickerController alloc] init];
    cameraUI.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	
    // Displays a control that allows the user to choose picture or
    // movie capture, if both are available:
    cameraUI.mediaTypes =
	[UIImagePickerController availableMediaTypesForSourceType:
	 UIImagePickerControllerSourceTypePhotoLibrary];
	
    // Hides the controls for moving & scaling pictures, or for
    // trimming movies. To instead show the controls, use YES.
    cameraUI.allowsEditing = NO;
	
    cameraUI.delegate = delegate;
	
    [controller presentModalViewController: cameraUI animated: YES];
    return YES;
}



- (BOOL) startCameraControllerFromViewController: (UIViewController*) controller
								   usingDelegate: (id <UIImagePickerControllerDelegate,
												   UINavigationControllerDelegate>) delegate {
	
    if (([UIImagePickerController isSourceTypeAvailable:
		  UIImagePickerControllerSourceTypeCamera] == NO)
		|| (delegate == nil)
		|| (controller == nil))
        return NO;
	
	
    UIImagePickerController *cameraUI = [[UIImagePickerController alloc] init];
    cameraUI.sourceType = UIImagePickerControllerSourceTypeCamera;
	
    // Displays a control that allows the user to choose picture or
    // movie capture, if both are available:
    cameraUI.mediaTypes =
	[UIImagePickerController availableMediaTypesForSourceType:
	 UIImagePickerControllerSourceTypeCamera];
	
    // Hides the controls for moving & scaling pictures, or for
    // trimming movies. To instead show the controls, use YES.
    cameraUI.allowsEditing = NO;
	
    cameraUI.delegate = delegate;
	
    [controller presentModalViewController: cameraUI animated: YES];
    return YES;
}

- (IBAction)choosePictureFromLibrary:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
        UIImagePickerController* picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsImageEditing = YES;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentModalViewController:picker animated:YES];
        [picker release];
    }
    else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Error accessing Photo Library" message:@"This device does not support a Photo Library." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
}


- (void)imagePickerController:(UIImagePickerController*)picker didFinishPickingImage:(UIImage*)image editingInfo:(NSDictionary*)editingInfo {   
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Picture picked!" message:@"You picked a picture!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    [alert release];
	
    [picker dismissModalViewControllerAnimated:YES];
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController*)picker {   
    [picker dismissModalViewControllerAnimated:YES];
}




// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
