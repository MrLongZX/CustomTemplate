//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "GMTableViewDataSource.h"

static NSString *identifier = @"TableViewCell";

@interface ___FILEBASENAMEASIDENTIFIER___ ()<UITableViewDelegate>

/** table */
@property (nonatomic, strong) UITableView *table;
/** datasource */
@property (nonatomic, strong) GMTableViewDataSource *tableDataSource;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"";
    
    [self initViews];
    [self bindViewModel];
}

- (void)initViews
{
    [self.view addSubview:self.table];
    [_table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}

- (void)bindViewModel
{
    @weakify(self);
    _table.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        @strongify(self);
        
    }];
    
    _table.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        @strongify(self);
        
    }];
}

#pragma mark - UITableView Delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 45;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [[UIView alloc] init];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - 懒加载
- (UITableView *)table
{
    if (!_table) {
        _table = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _table.dataSource = self.tableDataSource;
        _table.delegate = self;
        _table.backgroundColor = kWhiteColor;
        _table.showsVerticalScrollIndicator = NO;
        _table.separatorStyle = UITableViewCellSeparatorStyleNone;
        _table.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
        [_table registerClass:[UITableViewCell class] forCellReuseIdentifier:identifier];
    }
    return _table;
}

- (GMTableViewDataSource *)tableDataSource
{
    if (!_tableDataSource) {
        TableViewCellConfigureBlock configureCell = ^(UITableViewCell *cell, id data, NSIndexPath *indexPath) {
            
        };
        TableViewCellDelegateBlock delegateCell = ^(id data, NSIndexPath *indexPath, DelegateCallback responseCallback){
            
        };
        _tableDataSource = [[GMTableViewDataSource alloc] initCellIdentifier:identifier
                                                          configureCellBlock:configureCell
                                                           delegateCellBlock:delegateCell];
        _tableDataSource.isCanDelegate = YES;
    }
    return _tableDataSource;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
