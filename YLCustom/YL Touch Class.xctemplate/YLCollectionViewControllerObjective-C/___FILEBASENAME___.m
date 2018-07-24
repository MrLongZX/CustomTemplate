//___FILEHEADER___

#import "___FILEBASENAME___.h"

static NSString *kIdentifier = @"collectionIdentifier";

@interface ___FILEBASENAMEASIDENTIFIER___ ()<UICollectionViewDelegate, UICollectionViewDataSource>

/** collectionView */
@property (nonatomic, strong) UICollectionView *collectionView;

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
    [self.view addSubview:self.collectionView];
    [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(0, 0, KS_HOME_INDICATOR_HEIGHT, 0));
    }];
}

- (void)bindViewModel
{
    
}

#pragma mark --- UICollectionViewDelegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kIdentifier forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - 懒加载
- (UICollectionView *)collectionView
{
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        CGFloat W = <#value#>;
        CGFloat H = <#value#>;
        layout.itemSize = CGSizeMake(W, H);
        layout.minimumLineSpacing = <#value#>;
        layout.minimumInteritemSpacing = <#value#>;
        layout.scrollDirection = <#value#>;
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
        
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.backgroundColor = <#value#>;
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.showsVerticalScrollIndicator = YES;
        [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kIdentifier];
    }
    return _collectionView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
