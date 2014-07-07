//
//  EventListViewModel.m
//  JCiOSProjectSample
//
//  Created by jimple on 14/7/7.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import "EventListViewModel.h"
#import "SVREventListOperator.h"

@interface EventListViewModel ()

@property (nonatomic, strong) NSMutableArray *cellViewModelArray;
@property (nonatomic, strong) SVREventListOperator *svrOper;

@end


@implementation EventListViewModel

- (instancetype)init
{
    self  = [super init];
    if (self)
    {
        _cellViewModelArray = [[NSMutableArray alloc] init];
        
        
    }else{}
    return self;
}

// overwrite
- (void)loadMore
{
    self.isNoMore = @(NO);
    
    @weakify(self);
    [[[_svrOper getEventListWithPageSize:self.pageSize pageNum:self.pageNum type1Param:@"temp"] deliverOn:RACScheduler.mainThreadScheduler]
     subscribeNext:^(NSArray *eventInfoArray)
     {
         @strongify(self);
         if (eventInfoArray && (eventInfoArray.count > 0))
         {
             self.pageNum++;
             [self.dataArray addObjectsFromArray:eventInfoArray];
             self.appendItemCount = @(eventInfoArray.count);
             
             if (eventInfoArray.count < self.pageSize)
             {
                 self.isNoMore  = @(YES);
             }else{}
         }
         else
         {
             self.isNoMore  = @(YES);
         }
     }
     error:^(NSError *error)
     {
         @strongify(self);
         self.requestError = error;
     }];
}





























@end
