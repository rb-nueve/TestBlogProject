//
//  BlogTableViewCell.m
//  TestBlogProject
//
//  Created by MacMini on 18.05.2022.
//

#import "BlogTableViewCell.h"

@implementation BlogTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.containerView.layer.cornerRadius = 16;
   
    
    self.containerView.layer.shadowOffset = CGSizeZero;
    self.containerView.layer.shadowColor = UIColor.darkGrayColor.CGColor;
    self.containerView.layer.shadowRadius = 8;
    self.containerView.layer.shadowOpacity = 0.3;
    
    self.blogImageView.layer.cornerRadius = 16;
    self.blogImageView.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
  
}

- (void) configure:(BlogPost *)post {
    self.titleLabel.text = post.title;
    self.secondaryTitleLabel.text = post.author;
    self.subtitleLabel.text = post.pubDate;
    
    if (post.thumbnailData == nil) {
                self.blogImageView.image = [UIImage imageNamed:@"placeHolder"];
        [self.indicator startAnimating];
            } else {
                self.blogImageView.image = [UIImage imageWithData:post.thumbnailData];
                [self.indicator stopAnimating];
            }
    

    
    
}

@end
