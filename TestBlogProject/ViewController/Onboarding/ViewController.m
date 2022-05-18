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
    
    self.welcomeButton.backgroundColor = UIColor.systemBlueColor;
    [self.welcomeButton setTintColor:UIColor.whiteColor];
    [self.welcomeButton setTitle:@"Show Blog" forState:(UIControlStateNormal)];
    self.welcomeButton.layer.cornerRadius = 35;
    UIFont *font = [UIFont systemFontOfSize:16 weight:(UIFontWeightSemibold)];
    
    if (@available(iOS 13.0, *)) {
        UIFontDescriptor *descriptor =  [font.fontDescriptor fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded] ;
        if (descriptor == nil) {
            
        } else {
            font = [UIFont fontWithDescriptor:descriptor size:16];
        }
    } else {
        // Fallback on earlier versions
    }
    self.welcomeButton.titleLabel.font = font;
    
    [self.welcomeButton addTarget:self action:@selector(navigateToPosts:) forControlEvents:(UIControlEventTouchUpInside)];
}

- (void) navigateToPosts:(UIButton *)button {
    [self performSegueWithIdentifier:@"segue" sender:button];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segue"]) {
        UINavigationController *controller = segue.destinationViewController;
        
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
            {
                controller.modalPresentationStyle = UIModalPresentationFullScreen;
                NSLog(@"This is an iPhone");
            }
            else
            {
                NSLog(@"This is an iPad");
            }
    }
}


@end
