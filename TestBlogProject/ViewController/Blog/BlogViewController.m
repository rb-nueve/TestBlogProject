//
//  BlogViewController.m
//  TestBlogProject
//
//  Created by MacMini on 18.05.2022.
//

#import "BlogViewController.h"

@interface BlogViewController ()

@end

@implementation BlogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 300;
    [self fetchPosts];
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.posts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BlogTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    [cell configure:self.posts[indexPath.row]];
    [self fetchThumbNail:self.posts[indexPath.row].thumbnail];
     return  cell;
};


-(void) fetchPosts {
    self.posts = [[NSMutableArray alloc] init];
   // [self.indicator startAnimating];
    //q=flowers+inauthor
   
    NSURL *url = [[NSURL alloc] initWithString:@"https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/@playpokpok/feed"];
   
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSError *err;
        
        if (data == nil) {
            return;
        }
        
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        if (err) {
            NSLog(@"failed to fetch books");
            return;
        }
       
        NSArray *postsArray = json[@"items"];
        
        for (NSDictionary *post in postsArray) {
            NSString *title = post[@"title"];
            NSString *author = post[@"author"];
            NSString *link = post[@"post"];
            NSString *thumbnail = post[@"thumbnail"];
            NSString *description = post[@"description"];
            NSString *pubDate = post[@"pubDate"];
            
            BlogPost *post = BlogPost.new;
            post.title = title;
            post.author = author;
            post.pubDate = pubDate;
            post.blogDescription = description;
            post.link = link;
            post.thumbnail = thumbnail;
            [self.posts addObject:post];
        }
        
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
            //[self.indicator stopAnimating];
        });
        
         
        
    }];
    [dataTask resume];
}


- (void) fetchThumbNail:(NSString *)thumbnail {
    
}


@end
