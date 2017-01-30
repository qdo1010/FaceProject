//
//  ViewController.h
//  FaceProject
//
//  Created by HongQuan Do on 1/28/17.
//  Copyright © 2017 HongQuan Do. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VideoReader.h"

@interface ViewController : UIViewController{
    //cvVideoCamera* videoCamera;
//CvVideoCamera* videoCamera;
    VideoReader* reader;
}
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)ChooseImage:(id)sender;

- (IBAction)startVideo:(id)sender;

@end

