#import "GStaticCluster.h"

@implementation GStaticCluster {
    CLLocationCoordinate2D _position;
    NSMutableSet *_items;
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate {
    if (self = [super init]) {
        _position = coordinate;
        _items = [[NSMutableSet alloc] init];
    }
    return self;
}

- (void)add:(GQuadItem*)item {
    [_items addObject:item];
}

- (void)remove:(GQuadItem*)item {
    [_items removeObject:item];
}
- (NSSet*)items {
    return _items;
}

- (CLLocationCoordinate2D)position {
    return _position;
}

@end
