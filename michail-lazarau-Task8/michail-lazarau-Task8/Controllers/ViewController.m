#import "ViewController.h"
#import "DrawingsViewController.h"
#import "CanvasDrawingView.h"

@interface ViewController ()


@property (strong, nonatomic) UIButton *openPaletteBtn;
@property (strong, nonatomic) UIButton *shareBtn;
@property (strong, nonatomic) UIButton *drawBtn;
@property (strong, nonatomic) UIButton *openTimerBtn;

@property (strong, nonatomic) IBOutlet CanvasDrawingView *canvasView;
@property (strong, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (nonatomic, strong) DrawingsViewController *drawingVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.drawingVC = [[DrawingsViewController alloc] initWithNibName:@"DrawingsViewController" bundle:nil];
    
    [self setupNavigationBarView];
        
//    [self setupButtons];
}

-(void) setupNavigationBarView {
    // почему не отображается на xib кнопки положенные поверх?
    self.navigationItem.title = @"Artist";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(drawingsBtnWasTapped)];
}

-(void)setupCanvasView {
    
}


- (IBAction)drawBtnWasTapped:(UIButton *)sender {
    self.canvasView.type = Landscape;
    [self.canvasView setNeedsDisplay];
}

- (void)drawingsBtnWasTapped {
    //    navVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self.navigationController pushViewController:self.drawingVC animated:true];
}

@end

//-(void)showDrawingViewController {
//    //инициализировали дочерний VC
//    self.drawingVC = [[DrawingsViewController alloc] initWithNibName:@"DrawingsViewController" bundle:nil];
//
//    [self addChildViewController:self.drawingVC];
//    [self.view addSubview:self.drawingVC.view];
//    [self.drawingVC didMoveToParentViewController:self];
 //}

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