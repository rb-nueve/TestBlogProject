//
//  BlogTableViewCell.h
//  TestBlogProject
//
//  Created by MacMini on 18.05.2022.
//

#import <UIKit/UIKit.h>
#import "BlogPost.h"

NS_ASSUME_NONNULL_BEGIN

@interface BlogTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *blogImageView;
@property (weak, nonatomic) IBOutlet UILabel *secondaryTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
- (void)  configure:(BlogPost *)post ;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

@end

NS_ASSUME_NONNULL_END
