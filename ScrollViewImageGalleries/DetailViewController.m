//
//  DetailViewController.m
//  ScrollViewImageGalleries
//
//  Created by Steele on 2015-11-02.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIScrollView *detailView;
@property (nonatomic, strong) UIImageView *imageViewDetail;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.detailView.delegate = self;
    
    self.imageViewDetail = [[UIImageView alloc] initWithImage:self.image];
    
    
    self.imageViewDetail.translatesAutoresizingMaskIntoConstraints = NO;
    
    //self.detailView.contentSize = self.imageViewDetail.bounds.size;
    
   // self.detailView.contentSize = CGSizeMake(10000, 100000);

    
    self.detailView.minimumZoomScale = 1.0;
    self.detailView.maximumZoomScale = 4.0;
    self.detailView.zoomScale = 1.0;
    
    self.detailView.backgroundColor = [UIColor redColor];
    self.containerView.backgroundColor = [UIColor blueColor];
    self.imageViewDetail.backgroundColor = [UIColor greenColor];
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    //self.detailView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    
    [self.imageViewDetail setUserInteractionEnabled:YES];
    
    
    [self.containerView addSubview:self.imageViewDetail];
    
    
    [self.containerView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageViewDetail
                                                                   attribute:NSLayoutAttributeRight
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.containerView
                                                                   attribute:NSLayoutAttributeRight
                                                                  multiplier:1.0
                                                                    constant:0.0]];
    
    [self.containerView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageViewDetail
                                                                   attribute:NSLayoutAttributeLeft
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.containerView
                                                                   attribute:NSLayoutAttributeLeft
                                                                  multiplier:1.0
                                                                    constant:0.0]];
    
    [self.containerView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageViewDetail
                                                                   attribute:NSLayoutAttributeTop
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.containerView
                                                                   attribute:NSLayoutAttributeTop
                                                                  multiplier:1.0
                                                                    constant:0.0]];
    
    [self.containerView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageViewDetail
                                                                   attribute:NSLayoutAttributeBottom
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.containerView
                                                                   attribute:NSLayoutAttributeBottom
                                                                  multiplier:1.0
                                                                    constant:0.0]];
    
}



-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.imageViewDetail;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
