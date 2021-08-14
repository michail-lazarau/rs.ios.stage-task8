#import "PaletteViewController.h"
#import "UIButton+colorButton.h"

int const BUTTON_COUNT = 12;
int const BUTTON_SPACING = 20;
CGFloat const colorLayerSize = 24;
CGFloat const buttonSize = 40;

@interface PaletteViewController ()

@property(nonatomic,strong) UIButton *saveBtn;
//@property(nonatomic,strong) NSMutableArray<UIButton *> *selectedButtons;

@end

@implementation PaletteViewController

//- (NSMutableArray<UIButton *> *)selectedButtons {
//    if (_selectedButtons == nil) {
//        _selectedButtons = [[NSMutableArray<UIButton*> alloc] init];
//    }
//    return _selectedButtons;
//}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    for (UIButton *button in self.view.subviews) {
        UIColor* temp = [[UIColor alloc] initWithCGColor:button.layer.sublayers[0].backgroundColor];
        if ([self.colorsSelected containsObject:temp]) {
            [button.layer.sublayers[0] setFrame: CGRectMake(3, 3, 35, 35)];
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.colorsSelected == nil) {
    self.colorsSelected = [[NSMutableArray<UIColor*> alloc] init];
    }
    
    [self setupSaveButton];
    [self setupColorButtons];
}

- (void)setupSaveButton {
    self.saveBtn = [[UIButton alloc] initWithFrame:CGRectMake(250, 20, 85, 32)];
    [self.saveBtn setTitle:@"Save" forState:UIControlStateNormal];
    [self.saveBtn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    self.saveBtn.layer.borderWidth = 1.0;
    self.saveBtn.layer.borderColor = UIColor.systemGreenColor.CGColor;
    self.saveBtn.layer.cornerRadius = 10.0;
    [self.saveBtn addTarget:self action:@selector(saveButtonWasTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.saveBtn];
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
            button = [[UIButton alloc] initWithFrame: CGRectMake(i * (BUTTON_SPACING + buttonSize) + 17, 92, buttonSize, buttonSize)];
        } else {
            button = [[UIButton alloc] initWithFrame: CGRectMake((i-6) * (BUTTON_SPACING + buttonSize) + 17, 152, buttonSize, buttonSize)];
        }

        button.backgroundColor = [UIColor colorNamed:@"White"];
        button.layer.cornerRadius = 10.0f;
        button.tag = i;
        button.layer.masksToBounds = true;

        CALayer *sublayer = [CALayer layer];
        sublayer.frame = CGRectMake(8, 8, colorLayerSize, colorLayerSize);
        sublayer.cornerRadius = 10.0f;
        sublayer.masksToBounds = true;
        sublayer.backgroundColor = colors[i].CGColor;
        [button.layer addSublayer: sublayer];

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
        
        // shitty made
        [UIView animateWithDuration:0.27 animations:^{
                    [sender.layer.sublayers[0] setFrame: CGRectMake(8, 8, colorLayerSize, colorLayerSize)];
        }];
    } else {
        [self.colorsSelected addObject: color];
        
        [UIView animateWithDuration:0.27 animations:^{
                 [sender.layer.sublayers[0] setFrame: CGRectMake(3, 3, 35, 35)];
         }];
    }
}

@end
