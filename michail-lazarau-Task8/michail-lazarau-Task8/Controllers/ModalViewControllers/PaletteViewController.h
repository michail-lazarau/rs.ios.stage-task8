#import <UIKit/UIKit.h>
#import "ModalViewController.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ModalVCDelegate <NSObject>

-(void) sendColorStackToCanvas:(NSArray<UIColor*> *)colors;

@end

@interface PaletteViewController : ModalViewController

@property (nonatomic, weak) id <ModalVCDelegate> delegate;
@property (nonatomic, strong) NSMutableArray<UIColor*> *colorsSelected;

@end

NS_ASSUME_NONNULL_END
