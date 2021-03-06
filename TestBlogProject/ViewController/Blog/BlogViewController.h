//
//  BlogViewController.h
//  TestBlogProject
//
//  Created by MacMini on 18.05.2022.
//

#import <UIKit/UIKit.h>
#import "BlogPost.h"
#import "BlogTableViewCell.h"
#import "BlogDetailViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BlogViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITableViewDataSourcePrefetching>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray<BlogPost *> *posts;
@property BlogPost* selectedPost;
@end

NS_ASSUME_NONNULL_END
