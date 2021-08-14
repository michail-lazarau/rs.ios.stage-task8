#import "ColorButton.h"

int const BUTTON_COUNT = 12;
int const BUTTON_SPACING = 20;
CGFloat const colorLayerSize = 24;
CGFloat const buttonSize = 40;

@implementation ColorButton

-(instancetype)initWithFrame:(CGRect)frame andbackgroundColor:(UIColor *)color {
    self = [super initWithFrame:frame];
    
    self.backgroundColor = [UIColor colorNamed:@"White"];
    self.layer.cornerRadius = 10.0f;
//    button.tag = i;
    self.layer.masksToBounds = true;

    CALayer *sublayer = [CALayer layer];
    sublayer.frame = CGRectMake(8, 8, colorLayerSize, colorLayerSize);
    sublayer.cornerRadius = 10.0f;
    sublayer.masksToBounds = true;
    sublayer.backgroundColor = color.CGColor;
    [self.layer addSublayer: sublayer];

//    [self addTarget:self action:@selector(colorButtonWasTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    return self;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    if (selected) {
        [UIView animateWithDuration:0.27 animations:^{
                 [self.layer.sublayers[0] setFrame: CGRectMake(3, 3, 35, 35)];
         }];
    } else {
        [UIView animateWithDuration:0.27 animations:^{
                    [self.layer.sublayers[0] setFrame: CGRectMake(8, 8, colorLayerSize, colorLayerSize)];
        }];
}

//- (void)colorButtonWasTapped:(UIButton *)sender {
//    UIColor *color = [[UIColor alloc] initWithCGColor:sender.layer.sublayers[0].backgroundColor];
//
//    bool selected = [self.colorsSelected containsObject:color]
//    if (selected) {
//        [self.colorsSelected removeObject:color];
//        [self setSelected:selected]; // decrease background
//    } else {
//        [self.colorsSelected addObject: color];
//        [self setSelected:!selected]; // increase background
//    }
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
