//
//  BlogDetailViewController.m
//  TestBlogProject
//
//  Created by MacMini on 18.05.2022.
//

#import "BlogDetailViewController.h"

@interface BlogDetailViewController ()

@end

@implementation BlogDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.webView loadHTMLString:self.post.blogDescription baseURL:nil];
    self.navigationItem.title = self.post.title;
    
    // Do any additional setup after loading the view.
}



@end
