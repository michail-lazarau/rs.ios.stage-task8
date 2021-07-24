#import "PaletteViewController.h"

int const BUTTON_COUNT = 6;
int const BUTTON_SPACING = 20;

@interface PaletteViewController ()

@property(nonatomic,strong) UIButton *saveBtn;

@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupPaletteView];
    [self setupSaveButton];
    [self setupColorButtons];
}

-(void)setupPaletteView {
    self.view.backgroundColor = UIColor.systemGray6Color;
    self.view.layer.cornerRadius = 40; // закругление края
    self.view.layer.shadowRadius = 8.0; // дальность прорисовки тени
    self.view.layer.shadowOpacity = 1.0; // прозрачность тени - works as alpha - useless here
    self.view.layer.shadowOffset = CGSizeMake(5, -5); // смещение тени
    self.view.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
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
    
    NSArray<UIColor *> *colorsFirstRow = [[NSArray alloc] initWithObjects:[UIColor colorNamed:@"rsRed"], [UIColor colorNamed:@"rsBlue"], [UIColor colorNamed:@"rsGreen"], [UIColor colorNamed:@"rsGray"], [UIColor colorNamed:@"rsPurple"], [UIColor colorNamed:@"rsOrange"], [UIColor colorNamed:@"rsYellow"], [UIColor colorNamed:@"rsLightBlue"], [UIColor colorNamed:@"rsPink"], [UIColor colorNamed:@"sortOfRsBlack"], [UIColor colorNamed:@"rsDarkGray"], [UIColor colorNamed:@"rsBrown"], nil];
    
    CGFloat buttonSize = 40;
    CGFloat colorLayerSize = 24;
    
    UIButton *button = [[UIButton alloc] init];
    button.layer.cornerRadius = 10.0f;
    button.layer.masksToBounds = true;
    
    // добавить кнопки на вью - 1ый ряд
    for (int i = 0; i < BUTTON_COUNT; i++) {

        button.frame = CGRectMake(i * (BUTTON_SPACING + buttonSize) + 17, 92, buttonSize, buttonSize);
//        UIButton *button = [[UIButton alloc] initWithFrame: CGRectMake(i * (BUTTON_SPACING + buttonSize) + 17, 92, buttonSize, buttonSize)];
        button.tag = i;
        button.backgroundColor = [UIColor colorNamed:@"White"];
        
        CALayer *sublayer = [CALayer layer];
        sublayer.frame = CGRectMake(8, 8, colorLayerSize, colorLayerSize);
        sublayer.cornerRadius = 10.0f;
        sublayer.masksToBounds = true;
        sublayer.backgroundColor = colorsFirstRow[i].CGColor;
        [button.layer addSublayer: sublayer];
        
        [button addTarget:self action:@selector(colorButtonWasTapped) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
}

- (void)saveButtonWasTapped {
    [UIView animateWithDuration:0.27 animations:^(void){
            self.view.frame = CGRectMake(0, self.view.bounds.size.height, self.view.bounds.size.width, self.view.bounds.size.height);
    } completion:^(BOOL finished) { // не работает без методов внутри completion блока за пределами completion block'a
        [self willMoveToParentViewController:nil];
        [self.view removeFromSuperview];
        [self removeFromParentViewController];
    }];
}

- (void)colorButtonWasTapped {
    
}

@end
