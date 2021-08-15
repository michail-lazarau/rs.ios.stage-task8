#import "PaletteViewController.h"
#import "UIButton+colorButton.h"
#import "ColorButton.h"

int const BUTTON_COUNT = 12;
int const BUTTON_SPACING = 20;
CGFloat const buttonSize = 40;

@interface PaletteViewController ()

@end

@implementation PaletteViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    for (ColorButton *button in self.view.subviews) {
        UIColor* temp = [[UIColor alloc] initWithCGColor:button.layer.sublayers[0].backgroundColor];
        if ([self.colorsSelected containsObject:temp]) {
            [button setSelected:YES];
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.colorsSelected == nil) {
    self.colorsSelected = [[NSMutableArray<UIColor*> alloc] init];
    }
    
    [self setupColorButtons];
}

- (void) setupColorButtons {

    NSArray<UIColor *> *colors = [[NSArray alloc] initWithObjects:
                                          [UIColor colorNamed:@"rsRed"],
                                          [UIColor colorNamed:@"rsBlue"],
                                          [UIColor colorNamed:@"rsGreen"],
                                          [UIColor colorNamed:@"rsGray"],
                                          [UIColor colorNamed:@"rsPurple"],
                                          [UIColor colorNamed:@"rsOrange"],
                                          [UIColor colorNamed:@"rsYellow"],
                                          [UIColor colorNamed:@"rsLightBlue"],
                                          [UIColor colorNamed:@"rsPink"],
                                          [UIColor colorNamed:@"sortOfRsBlack"],
                                          [UIColor colorNamed:@"rsDarkGreen"],
                                          [UIColor colorNamed:@"rsBrown"], nil];

    // добавить кнопки на вью - 1ый ряд
    for (int i = 0; i < BUTTON_COUNT; i++) {
        UIButton *button;
        if (i < 6) {
            button = [[ColorButton alloc] initWithFrame: CGRectMake(i * (BUTTON_SPACING + buttonSize) + 17, 92, buttonSize, buttonSize) andbackgroundColor:colors[i]];
        } else {
            button = [[ColorButton alloc] initWithFrame: CGRectMake((i-6) * (BUTTON_SPACING + buttonSize) + 17, 152, buttonSize, buttonSize) andbackgroundColor:colors[i]];
        }
        button.tag = i;
        [button addTarget:self action:@selector(colorButtonWasTapped:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
}

- (void)saveButtonWasTapped {
    [self.delegate sendColorStackToCanvas: [self.colorsSelected copy]];
    [super saveButtonWasTapped];
}

- (void)colorButtonWasTapped:(UIButton *)sender {
    UIColor *color = [[UIColor alloc] initWithCGColor:sender.layer.sublayers[0].backgroundColor];
    
    
    if ([self.colorsSelected containsObject:color]) {
        [self.colorsSelected removeObject:color];
        [sender setSelected:NO];
    } else {
        [self.colorsSelected addObject: color];
        [sender setSelected:YES];
    }
}

@end
