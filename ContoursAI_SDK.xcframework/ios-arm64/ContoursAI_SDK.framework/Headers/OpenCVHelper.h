//
//  OpenCVHelper.h
//  OpenCVHelper2
//
//  Created by UrbanFT on 2022-10-08.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// Protocol for callback action
@protocol OpenCVCameraDelegate <NSObject>

- (void)onImageCaptured:(NSString *)checkPosition :(UIImage *)image :(CGRect)checkPoints :(float)confi :(BOOL)isCheckClose : (float)checkErrorCode;

@end

// Public interface for camera. ViewController only needs to init, start and stop.
@interface OpenCVHelper : NSObject

- (id)initWithController:(UIViewController<OpenCVCameraDelegate>*)classDelegate andImageView:(UIImageView*)imageView;
-(void)start;
-(void)stop;
-(void)captureImage;
-(void)startTimerForImageObject;
-(bool)checkImageBlurry:(UIImage *)img;
- (void) stopTimer;
@property (strong, nonatomic)   NSTimer                         *pictureTimer;
@property (nonatomic) float checkClosePercentage;
@property (nonatomic) float checkPosition;
@property (nonatomic) float imageProcessingFrameRate;
@property (nonatomic) float blurThreshould;
@property (nonatomic) NSOperationQueue *queue;
@property (nonatomic) NSBundle *contoursBunldle;
@property (nonatomic) NSData *yoloData;
@property (nonatomic) NSString *decFileName;

@end
