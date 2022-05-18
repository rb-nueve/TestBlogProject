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
    self.containerView.layer.masksToBounds = true;
    
    self.containerView.layer.shadowOffset = CGSizeZero;
    self.containerView.layer.shadowColor = UIColor.darkGrayColor.CGColor;
    self.containerView.layer.shadowRadius = 8;
    self.containerView.layer.shadowOpacity = 0.3;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
