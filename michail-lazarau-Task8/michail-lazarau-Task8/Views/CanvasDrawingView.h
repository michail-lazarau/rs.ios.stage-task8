#import <UIKit/UIKit.h>
#import "PaletteViewController.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, CanvasDrawingViewType) {
    Empty = 0,
    Landscape = 1,
    Planet = 2
};

@interface CanvasDrawingView : UIView <PaletteViewControllerDelegate>

// представлен примитивом integer
@property (nonatomic, assign) CanvasDrawingViewType type;
@property (nonatomic, copy) NSMutableSet<UIColor*> *colorSet;

@end

NS_ASSUME_NONNULL_END
