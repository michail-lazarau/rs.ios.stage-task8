#import "ModalViewController.h"

@interface ModalViewController ()

@property(nonatomic,strong) UIButton *saveBtn;

@end

@implementation ModalViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
	[self setupPaletteView];
    [self setupSaveButton];
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

- (void)saveButtonWasTapped {
	[UIView animateWithDuration:0.27 animations:^(void){
	         self.view.frame = CGRectMake(0, self.view.bounds.size.height, self.view.bounds.size.width, self.view.bounds.size.height);
	 } completion:^(BOOL finished) { // не работает без методов внутри completion блока за пределами completion block'a
	         [self willMoveToParentViewController:nil];
	         [self.view removeFromSuperview];
	         [self removeFromParentViewController];
	 }];
}

@end
