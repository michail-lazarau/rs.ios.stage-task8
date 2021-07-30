#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaletteViewControllerDelegate <NSObject>

-(void) sendColorStackToCanvas:(NSArray<UIColor*> *)colors;

@end

@interface PaletteViewController : UIViewController

@property (nonatomic, weak) id <PaletteViewControllerDelegate> delegate;
@property (nonatomic, strong) NSMutableArray<UIColor*> *colorsSelected;

@end

NS_ASSUME_NONNULL_END
