//
//  BlogTableViewCell.h
//  TestBlogProject
//
//  Created by MacMini on 18.05.2022.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlogTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *blogImageView;
@property (weak, nonatomic) IBOutlet UILabel *secondaryTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;

@end

NS_ASSUME_NONNULL_END
