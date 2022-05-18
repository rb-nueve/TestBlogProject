//
//  BlogDetailViewController.h
//  TestBlogProject
//
//  Created by MacMini on 18.05.2022.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "BlogPost.h"

NS_ASSUME_NONNULL_BEGIN

@interface BlogDetailViewController : UIViewController

@property BlogPost *post;
@property (weak, nonatomic) IBOutlet WKWebView *webView;

@end

NS_ASSUME_NONNULL_END
