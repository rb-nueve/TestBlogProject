//
//  BlogPost.h
//  TestBlogProject
//
//  Created by MacMini on 18.05.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlogPost : NSObject
@property NSString* title;
@property NSString* author;
@property NSString* thumbnail;
@property NSString* blogDescription;
@property NSString* pubDate;
@property NSString* link;
@property (nullable) NSData* thumbnailData;
@end

NS_ASSUME_NONNULL_END
