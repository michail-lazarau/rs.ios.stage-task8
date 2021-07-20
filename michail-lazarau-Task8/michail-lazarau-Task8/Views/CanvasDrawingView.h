#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, CanvasDrawingViewType) {
    Empty = 0,
    Landscape = 1,
    Planet = 2
};

@interface CanvasDrawingView : UIView

// представлен примитивом integer
@property (nonatomic, assign) CanvasDrawingViewType type;

@end

NS_ASSUME_NONNULL_END
