#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaletteViewControllerDelegate <NSObject>

-(void) sendColorStackToCanvas;

@end

@interface PaletteViewController : UIViewController

@property (nonatomic, weak) id <PaletteViewControllerDelegate> delegate;
//@property (nonatomic, copy) NSMutableSet<id> *colorSet;
@property (nonatomic, strong) NSMutableOrderedSet<id> *colorSet;

@end

NS_ASSUME_NONNULL_END
