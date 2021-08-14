#import "ViewController.h"
#import "DrawingsViewController.h"
#import "CanvasDrawingView.h"
#import "PaletteViewController.h"

enum State {
   idle,
   drawing,
   done
};

@interface ViewController ()

@property (strong, nonatomic) UIButton *openPaletteBtn;
@property (strong, nonatomic) UIButton *shareBtn;
@property (strong, nonatomic) UIButton *openTimerBtn;
@property (weak, nonatomic) IBOutlet UIButton *drawResetBtn;

@property (strong, nonatomic) IBOutlet CanvasDrawingView *canvasView;
@property (strong, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (nonatomic, strong) DrawingsViewController *drawingVC;
@property (strong, nonatomic) PaletteViewController *paletteVC;
@property (nonatomic,assign) enum State type;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.drawingVC = [[DrawingsViewController alloc] initWithNibName:@"DrawingsViewController" bundle:nil];
    [self setupNavigationBarView];
    [self setupButtons];
    [self setupIdleState];
}

-(void) setupNavigationBarView {
    // почему не отображается на xib кнопки положенные поверх?
    self.navigationItem.title = @"Artist";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(drawingsBtnWasTapped)];
}

-(void)setupButtons {
    [self.drawResetBtn addTarget:self action:@selector(drawResetBtnWasTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (IBAction)openPaletteBtnWasTapped:(UIButton *)sender {
        [self showPaletteViewController];
}

- (void)drawResetBtnWasTapped {
    if (self.type == idle) {
        self.canvasView.type = Landscape;
        [self.canvasView setNeedsDisplay];
        [self setupDoneState];
    } else {
        [self setupIdleState];
    }
}

- (void)drawingsBtnWasTapped {
    //    navVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self.navigationController pushViewController:self.drawingVC animated:true];
}

- (void)showPaletteViewController {
    self.paletteVC = [[PaletteViewController alloc] init];
    [self addChildViewController:self.paletteVC];
    
    self.paletteVC.colorsSelected = [self.canvasView.colorsSelected mutableCopy]; // должно быть передано до добавления вью (завязано на инициализации объектов во viewDidLoad). Читать жизненный цикл
    
    [self.paletteVC setDelegate:self.canvasView]; // this!!!
    [self.view addSubview:self.paletteVC.view];
    
    self.paletteVC.view.frame = CGRectMake(0, self.view.bounds.size.height, self.view.bounds.size.width, self.view.bounds.size.height); // создан и спрятан позади других вью

    [UIView animateWithDuration:0.27 animations:^(void){
        self.paletteVC.view.frame = CGRectMake(0, self.view.bounds.size.height / 2, self.view.bounds.size.width, self.view.bounds.size.height);
    }]; // анимирование вида вью
    
    [self.paletteVC didMoveToParentViewController:self]; // помести вперед других вью
}

#pragma mark Extension

-(void) setupIdleState {
    self.type = idle;
    
    [self.drawResetBtn setTitle:@"Draw" forState:UIControlStateNormal];
    for (CAShapeLayer *layer in self.canvasView.shapeLayers) {
        layer.strokeEnd = 0.0;
    }
}

-(void) setupDrawState {
    self.type = drawing;
    
    [self.drawResetBtn setEnabled:NO];
    self.drawResetBtn.alpha = 0.5;
}

-(void) setupDoneState {
    self.type = done;
    
    [self.drawResetBtn setTitle:@"Reset" forState:UIControlStateNormal];
    [self.drawResetBtn setEnabled:YES];
    self.drawResetBtn.alpha = 1.0;
}

@end

//-(void) setupButtons {
//
//    self.openPaletteBtn.backgroundColor = UIColor.whiteColor;
//    self.openPaletteBtn.tintColor = UIColor.grayColor;
//    self.openPaletteBtn.layer.cornerRadius = 8;
//    self.openPaletteBtn.layer.masksToBounds = true;
//    [self.openPaletteBtn setTitleColor:UIColor.systemGreenColor forState:UIControlStateNormal];
//    [self.openPaletteBtn addTarget:self action:@selector(openPaletteBtnIsTapped:) forControlEvents:UIControlEventTouchUpInside];
//
//    self.openTimerBtn.backgroundColor = UIColor.whiteColor;
//    self.openTimerBtn.tintColor = UIColor.grayColor;
//    self.openTimerBtn.layer.cornerRadius = 8;
//    self.openTimerBtn.layer.masksToBounds = true;
//    [self.openTimerBtn setTitleColor:UIColor.systemGreenColor forState:UIControlStateNormal];
//    [self.openTimerBtn addTarget:self action:@selector(openTimerBtnIsTapped:) forControlEvents:UIControlEventTouchUpInside];
//
//    self.drawBtn.backgroundColor = UIColor.whiteColor;
//    self.drawBtn.tintColor = UIColor.grayColor;
//    self.drawBtn.layer.cornerRadius = 8;
//    self.drawBtn.layer.masksToBounds = true;
//    [self.drawBtn setTitleColor:UIColor.systemGreenColor forState:UIControlStateNormal];
//    [self.drawBtn addTarget:self action:@selector(drawBtnIsTapped:) forControlEvents:UIControlEventTouchUpInside];
//
//    self.shareBtn.backgroundColor = UIColor.whiteColor;
//    self.shareBtn.tintColor = UIColor.grayColor;
//    self.shareBtn.layer.cornerRadius = 8;
//    self.shareBtn.layer.masksToBounds = true;
//    [self.shareBtn setTitleColor:UIColor.systemGreenColor forState:UIControlStateNormal];
//    [self.shareBtn addTarget:self action:@selector(shareBtnIsTapped:) forControlEvents:UIControlEventTouchUpInside];
//}
