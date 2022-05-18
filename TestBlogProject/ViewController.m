//
//  ViewController.m
//  TestBlogProject
//
//  Created by MacMini on 17.05.2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)setupUI {
    self.welcomeButton = [[UIButton alloc] initWithFrame:(CGRectZero)];
    self.welcomeButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:self.welcomeButton];
    [NSLayoutConstraint activateConstraints:@[
            [self.welcomeButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-100],
            [self.welcomeButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:30],
            [self.welcomeButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-30],
            [self.welcomeButton.heightAnchor constraintEqualToConstant:70],
    ]];

    UIButtonConfiguration *config = [UIButtonConfiguration filledButtonConfiguration];
    config.cornerStyle = UIButtonConfigurationCornerStyleCapsule;
    [config setTitle:@"Show Blog"];
     
    self.welcomeButton.configuration = config;
}


@end
