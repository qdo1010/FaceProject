//
//  ViewController.m
//  FaceProject
//
//  Created by HongQuan Do on 1/28/17.
//  Copyright © 2017 HongQuan Do. All rights reserved.
//

#import "ViewController.h"
#import "VideoReader.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    reader = [[VideoReader alloc] init];
    [reader openVideoWithOpenCV:_imageView];
    // Do any additional setup after loading the view, typically from a nib.
   
}



- (IBAction)startVideo:(id)sender {
    [reader startVieoCameraWithOpenCV];
}



- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //You can retrieve the actual UIImage
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    //Or you can get the image url from AssetsLibrary
    NSURL *path = [info valueForKey:UIImagePickerControllerReferenceURL];
    _imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ChooseImage:(id)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.delegate = self;
    [self presentViewController:imagePickerController animated:YES completion:nil];
}
@end

