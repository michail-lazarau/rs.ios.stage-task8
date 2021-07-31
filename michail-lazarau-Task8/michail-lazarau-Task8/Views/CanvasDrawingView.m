#import "CanvasDrawingView.h"

@interface CanvasDrawingView()

@property (copy, nonatomic) NSArray* landscapeDrawings; // cannot be assign!

@end

@implementation CanvasDrawingView

@synthesize landscapeDrawings;

- (void)sendColorStackToCanvas:(NSArray<UIColor*> *)colors {
    // больше не повторять такое говно
//    NSMutableArray<UIColor*> *temp = [[NSMutableArray<UIColor*> alloc] initWithArray:colors];
//    if (colors.count < 3) {
//        for (int i = 0; i < 3 - colors.count; i++) {
//            [temp addObject:[UIColor blackColor]];
//        }
//    }
//    self.colorsSelected = [temp copy];
    self.colorsSelected = colors;
}

- (void)drawRect:(CGRect)rect {
    self.clearsContextBeforeDrawing = YES;
    
    switch (self.type) {
        case Landscape:
            [self drawLandscape];
            break;
        case Planet:
            [self drawPlanet];
            break;
        case Empty:
            break;
    }
}

-(void) setupCanvas {
    self.tintColor = UIColor.blueColor;
    self.backgroundColor = UIColor.whiteColor;
}

- (UIBezierPath*) drawLandscapeHorizon {
//    UIColor* strokeColor = self.colorsSelected[0];
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(249, 134)];
    [bezierPath addLineToPoint: CGPointMake(255.5, 143.5)];
    [bezierPath addLineToPoint: CGPointMake(268, 156)];
    [bezierPath addLineToPoint: CGPointMake(267, 139.5)];
    [bezierPath addLineToPoint: CGPointMake(264.5, 124)];
    [bezierPath addLineToPoint: CGPointMake(259.5, 110.5)];
    [bezierPath addLineToPoint: CGPointMake(255.5, 102)];
    [bezierPath addLineToPoint: CGPointMake(251.5, 94.5)];
    [bezierPath addLineToPoint: CGPointMake(245.5, 86)];
    [bezierPath addLineToPoint: CGPointMake(240.5, 85.5)];
    [bezierPath addLineToPoint: CGPointMake(238, 85.5)];
    [bezierPath addLineToPoint: CGPointMake(234, 86)];
    [bezierPath addLineToPoint: CGPointMake(230, 87.5)];
    [bezierPath addLineToPoint: CGPointMake(226.5, 85.5)];
    [bezierPath addLineToPoint: CGPointMake(223.5, 84.5)];
    [bezierPath addLineToPoint: CGPointMake(219.5, 85.5)];
    [bezierPath addLineToPoint: CGPointMake(214.5, 85.5)];
    [bezierPath addLineToPoint: CGPointMake(210, 87.5)];
    [bezierPath addLineToPoint: CGPointMake(207, 86)];
    [bezierPath addLineToPoint: CGPointMake(203, 84.5)];
    [bezierPath addLineToPoint: CGPointMake(199, 84.5)];
    [bezierPath addLineToPoint: CGPointMake(192, 84.5)];
    [bezierPath addLineToPoint: CGPointMake(185.5, 84.5)];
    [bezierPath addLineToPoint: CGPointMake(182.5, 86)];
    [bezierPath addLineToPoint: CGPointMake(176, 84.5)];
    [bezierPath addLineToPoint: CGPointMake(170, 84.5)];
    [bezierPath addLineToPoint: CGPointMake(166, 83.5)];
    [bezierPath addLineToPoint: CGPointMake(160.5, 85.5)];
    [bezierPath addLineToPoint: CGPointMake(157, 83.5)];
    [bezierPath addLineToPoint: CGPointMake(150, 83.5)];
    [bezierPath addLineToPoint: CGPointMake(155.5, 82)];
    [bezierPath addLineToPoint: CGPointMake(159, 79)];
    [bezierPath addLineToPoint: CGPointMake(160.5, 77)];
    [bezierPath addLineToPoint: CGPointMake(163.5, 74.5)];
    [bezierPath addLineToPoint: CGPointMake(166, 71)];
    [bezierPath addLineToPoint: CGPointMake(170, 71)];
    [bezierPath addLineToPoint: CGPointMake(177.5, 71)];
    [bezierPath addLineToPoint: CGPointMake(183, 71)];
    [bezierPath addLineToPoint: CGPointMake(188, 68)];
    [bezierPath addLineToPoint: CGPointMake(190, 64)];
    [bezierPath addLineToPoint: CGPointMake(196.5, 63)];
    [bezierPath addLineToPoint: CGPointMake(200, 65.5)];
    [bezierPath addLineToPoint: CGPointMake(204, 64)];
    [bezierPath addLineToPoint: CGPointMake(208, 65.5)];
    [bezierPath addLineToPoint: CGPointMake(210, 61.5)];
    [bezierPath addLineToPoint: CGPointMake(214.5, 59.5)];
    [bezierPath addLineToPoint: CGPointMake(220.5, 59.5)];
    [bezierPath addLineToPoint: CGPointMake(210, 52)];
    [bezierPath addLineToPoint: CGPointMake(196.5, 44.5)];
    [bezierPath addLineToPoint: CGPointMake(179, 37.5)];
    [bezierPath addLineToPoint: CGPointMake(159, 33.5)];
    [bezierPath addLineToPoint: CGPointMake(143.5, 32.5)];
    [bezierPath addLineToPoint: CGPointMake(126.5, 33.5)];
    [bezierPath addLineToPoint: CGPointMake(110, 36)];
    [bezierPath addLineToPoint: CGPointMake(97, 41)];
    [bezierPath addLineToPoint: CGPointMake(85.5, 46)];
    [bezierPath addLineToPoint: CGPointMake(91, 49)];
    [bezierPath addLineToPoint: CGPointMake(95, 53)];
    [bezierPath addLineToPoint: CGPointMake(98, 58.5)];
    [bezierPath addLineToPoint: CGPointMake(98.5, 64)];
    [bezierPath addLineToPoint: CGPointMake(95, 72)];
    [bezierPath addLineToPoint: CGPointMake(89.5, 77)];
    [bezierPath addLineToPoint: CGPointMake(85.5, 79)];
    [bezierPath addLineToPoint: CGPointMake(81, 79)];
    [bezierPath addLineToPoint: CGPointMake(74, 76)];
    [bezierPath addLineToPoint: CGPointMake(69, 72)];
    [bezierPath addLineToPoint: CGPointMake(65.5, 65.5)];
    [bezierPath addLineToPoint: CGPointMake(65.5, 59.5)];
    [bezierPath addLineToPoint: CGPointMake(53, 70.5)];
    [bezierPath addLineToPoint: CGPointMake(44.5, 80.5)];
    [bezierPath addLineToPoint: CGPointMake(37, 92)];
    [bezierPath addLineToPoint: CGPointMake(31.5, 103)];
    [bezierPath addLineToPoint: CGPointMake(30, 109)];
    [bezierPath addLineToPoint: CGPointMake(33.5, 109)];
    [bezierPath addLineToPoint: CGPointMake(37, 108)];
    [bezierPath addLineToPoint: CGPointMake(43.5, 112)];
    [bezierPath addLineToPoint: CGPointMake(49.5, 112)];
    [bezierPath addLineToPoint: CGPointMake(55.5, 117)];
    [bezierPath addLineToPoint: CGPointMake(59, 116)];
    [bezierPath addLineToPoint: CGPointMake(64, 118.5)];
    [bezierPath addLineToPoint: CGPointMake(61.5, 119.5)];
    [bezierPath addLineToPoint: CGPointMake(55.5, 121)];
    [bezierPath addLineToPoint: CGPointMake(50.5, 120)];
    [bezierPath addLineToPoint: CGPointMake(48.5, 121)];
    [bezierPath addLineToPoint: CGPointMake(44.5, 121)];
    [bezierPath addLineToPoint: CGPointMake(41.5, 121)];
    [bezierPath addLineToPoint: CGPointMake(39.5, 123)];
    [bezierPath addLineToPoint: CGPointMake(37.5, 122)];
    [bezierPath addLineToPoint: CGPointMake(35.5, 122)];
    [bezierPath addLineToPoint: CGPointMake(30, 119.5)];
    [bezierPath addLineToPoint: CGPointMake(24.5, 122)];
    [bezierPath addLineToPoint: CGPointMake(22, 130.5)];
    [bezierPath addLineToPoint: CGPointMake(20, 156.5)];
    [bezierPath addLineToPoint: CGPointMake(24.5, 186.5)];
    [bezierPath addLineToPoint: CGPointMake(31.5, 179.5)];
    [bezierPath addLineToPoint: CGPointMake(37, 175.5)];
    [bezierPath addLineToPoint: CGPointMake(48.5, 163)];
    [bezierPath addLineToPoint: CGPointMake(59, 151.5)];
    [bezierPath moveToPoint: CGPointMake(249, 134)];
    [bezierPath addLineToPoint: CGPointMake(238, 139.5)];
    [bezierPath moveToPoint: CGPointMake(249, 134)];
    [bezierPath addLineToPoint: CGPointMake(247.17, 143.5)];
    [bezierPath addLineToPoint: CGPointMake(247.17, 155)];
    [bezierPath moveToPoint: CGPointMake(238, 139.5)];
    [bezierPath addLineToPoint: CGPointMake(226.5, 116)];
    [bezierPath addLineToPoint: CGPointMake(218, 108.5)];
    [bezierPath addLineToPoint: CGPointMake(210, 118.5)];
    [bezierPath addLineToPoint: CGPointMake(199, 131)];
    [bezierPath addLineToPoint: CGPointMake(194.5, 128.5)];
    [bezierPath addLineToPoint: CGPointMake(177.5, 146.5)];
    [bezierPath addLineToPoint: CGPointMake(163.5, 167)];
    [bezierPath moveToPoint: CGPointMake(238, 139.5)];
    [bezierPath addLineToPoint: CGPointMake(242, 146.5)];
    [bezierPath addLineToPoint: CGPointMake(247.17, 155)];
    [bezierPath moveToPoint: CGPointMake(163.5, 167)];
    [bezierPath addLineToPoint: CGPointMake(155.5, 158)];
    [bezierPath addLineToPoint: CGPointMake(135, 138)];
    [bezierPath addLineToPoint: CGPointMake(127.5, 118.5)];
    [bezierPath addLineToPoint: CGPointMake(123, 118.5)];
    [bezierPath addLineToPoint: CGPointMake(116.5, 108.5)];
    [bezierPath moveToPoint: CGPointMake(163.5, 167)];
    [bezierPath addLineToPoint: CGPointMake(163.5, 169.5)];
    [bezierPath addLineToPoint: CGPointMake(167, 173)];
    [bezierPath addLineToPoint: CGPointMake(174.25, 180.25)];
    [bezierPath moveToPoint: CGPointMake(116.5, 108.5)];
    [bezierPath addLineToPoint: CGPointMake(105, 117)];
    [bezierPath addLineToPoint: CGPointMake(101.5, 124)];
    [bezierPath addLineToPoint: CGPointMake(90.5, 136.5)];
    [bezierPath addLineToPoint: CGPointMake(84.5, 134)];
    [bezierPath moveToPoint: CGPointMake(116.5, 108.5)];
    [bezierPath addLineToPoint: CGPointMake(112.5, 116)];
    [bezierPath addLineToPoint: CGPointMake(111, 124)];
    [bezierPath moveToPoint: CGPointMake(84.5, 134)];
    [bezierPath addLineToPoint: CGPointMake(69, 154)];
    [bezierPath addLineToPoint: CGPointMake(59, 151.5)];
    [bezierPath moveToPoint: CGPointMake(84.5, 134)];
    [bezierPath addLineToPoint: CGPointMake(84.5, 146.5)];
    [bezierPath addLineToPoint: CGPointMake(86.5, 158)];
    [bezierPath moveToPoint: CGPointMake(59, 151.5)];
    [bezierPath addLineToPoint: CGPointMake(62.5, 157.5)];
    [bezierPath addLineToPoint: CGPointMake(64, 164.5)];
    [bezierPath addLineToPoint: CGPointMake(64, 174)];
    [bezierPath addLineToPoint: CGPointMake(69, 183.5)];
    [bezierPath moveToPoint: CGPointMake(181.5, 187.5)];
    [bezierPath addLineToPoint: CGPointMake(174.25, 180.25)];
    [bezierPath moveToPoint: CGPointMake(258.5, 175)];
    [bezierPath addLineToPoint: CGPointMake(249, 158)];
    [bezierPath addLineToPoint: CGPointMake(247.17, 155)];
    [bezierPath moveToPoint: CGPointMake(174.25, 180.25)];
    [bezierPath addLineToPoint: CGPointMake(188, 175.5)];
    [bezierPath addLineToPoint: CGPointMake(189.16, 177)];
    [bezierPath moveToPoint: CGPointMake(196.5, 186.5)];
    [bezierPath addLineToPoint: CGPointMake(189.16, 177)];
    [bezierPath moveToPoint: CGPointMake(189.16, 177)];
    [bezierPath addLineToPoint: CGPointMake(196.5, 174)];
    [bezierPath addLineToPoint: CGPointMake(203, 177)];
    [bezierPath addLineToPoint: CGPointMake(213, 183.5)];
    [bezierPath addLineToPoint: CGPointMake(223.5, 187.5)];
    [bezierPath addLineToPoint: CGPointMake(232, 194.5)];
    [bezierPath addLineToPoint: CGPointMake(238, 196)];
    [bezierPath addLineToPoint: CGPointMake(253.5, 208)];
    [bezierPath moveToPoint: CGPointMake(108, 149)];
    [bezierPath addLineToPoint: CGPointMake(108, 140.5)];
    [bezierPath addLineToPoint: CGPointMake(109.5, 131)];
//    [strokeColor setStroke];
    bezierPath.lineWidth = 1;
    bezierPath.miterLimit = 4;
    bezierPath.lineCapStyle = kCGLineCapRound;
//    [bezierPath stroke];
    
    return bezierPath;
}

-(UIBezierPath*)drawLandscapeMountains {
//    UIColor* strokeColor = self.colorsSelected[1];
    
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(103.5, 153)];
    [bezier3Path addLineToPoint: CGPointMake(105.5, 159.5)];
    [bezier3Path addLineToPoint: CGPointMake(106.5, 170.5)];
    [bezier3Path addLineToPoint: CGPointMake(104, 189)];
    [bezier3Path addLineToPoint: CGPointMake(100.5, 206.5)];
    [bezier3Path addLineToPoint: CGPointMake(101, 216)];
    [bezier3Path addLineToPoint: CGPointMake(104, 224)];
    [bezier3Path moveToPoint: CGPointMake(108.5, 224)];
    [bezier3Path addLineToPoint: CGPointMake(109.5, 212.5)];
    [bezier3Path moveToPoint: CGPointMake(110.5, 208.5)];
    [bezier3Path addLineToPoint: CGPointMake(109.5, 196.5)];
    [bezier3Path addLineToPoint: CGPointMake(108.5, 188.5)];
    [bezier3Path addLineToPoint: CGPointMake(107.5, 181)];
    [bezier3Path moveToPoint: CGPointMake(116, 175.5)];
    [bezier3Path addLineToPoint: CGPointMake(118, 183.5)];
    [bezier3Path addLineToPoint: CGPointMake(119.5, 194)];
    [bezier3Path moveToPoint: CGPointMake(121, 184.5)];
    [bezier3Path addLineToPoint: CGPointMake(121.5, 190.5)];
    [bezier3Path addLineToPoint: CGPointMake(124, 199.5)];
    [bezier3Path addLineToPoint: CGPointMake(126.5, 205.5)];
    [bezier3Path moveToPoint: CGPointMake(125, 194)];
    [bezier3Path addLineToPoint: CGPointMake(125.5, 198.5)];
    [bezier3Path addLineToPoint: CGPointMake(129, 204.5)];
    [bezier3Path moveToPoint: CGPointMake(138, 182)];
    [bezier3Path addLineToPoint: CGPointMake(139, 189)];
    [bezier3Path addLineToPoint: CGPointMake(140.5, 196)];
    [bezier3Path addLineToPoint: CGPointMake(143, 201.5)];
    [bezier3Path moveToPoint: CGPointMake(146.5, 203)];
    [bezier3Path addLineToPoint: CGPointMake(143.5, 197)];
    [bezier3Path addLineToPoint: CGPointMake(142, 192)];
    [bezier3Path addLineToPoint: CGPointMake(141.5, 187)];
    [bezier3Path moveToPoint: CGPointMake(139, 196)];
    [bezier3Path addLineToPoint: CGPointMake(137, 190)];
    [bezier3Path addLineToPoint: CGPointMake(136, 184)];
    [bezier3Path addLineToPoint: CGPointMake(135.5, 176)];
    [bezier3Path addLineToPoint: CGPointMake(136, 169)];
    [bezier3Path moveToPoint: CGPointMake(79, 158.5)];
    [bezier3Path addLineToPoint: CGPointMake(76.5, 166)];
    [bezier3Path addLineToPoint: CGPointMake(75.5, 173)];
    [bezier3Path addLineToPoint: CGPointMake(75.5, 181)];
    [bezier3Path moveToPoint: CGPointMake(73.5, 175.5)];
    [bezier3Path addLineToPoint: CGPointMake(74, 167.5)];
    [bezier3Path addLineToPoint: CGPointMake(76.5, 158.5)];
    [bezier3Path addLineToPoint: CGPointMake(80, 151)];
    [bezier3Path moveToPoint: CGPointMake(82.5, 140)];
    [bezier3Path addLineToPoint: CGPointMake(78.5, 146)];
    [bezier3Path addLineToPoint: CGPointMake(75.5, 152)];
    [bezier3Path moveToPoint: CGPointMake(38.5, 181)];
    [bezier3Path addLineToPoint: CGPointMake(36.5, 189)];
    [bezier3Path addLineToPoint: CGPointMake(33.5, 196.5)];
    [bezier3Path addLineToPoint: CGPointMake(30.5, 202)];
    [bezier3Path moveToPoint: CGPointMake(41.5, 181)];
    [bezier3Path addLineToPoint: CGPointMake(39.5, 188.5)];
    [bezier3Path addLineToPoint: CGPointMake(36, 197.5)];
    [bezier3Path moveToPoint: CGPointMake(43, 173)];
    [bezier3Path addLineToPoint: CGPointMake(42, 178.5)];
    [bezier3Path moveToPoint: CGPointMake(56.5, 159.5)];
    [bezier3Path addLineToPoint: CGPointMake(54, 169)];
    [bezier3Path moveToPoint: CGPointMake(55.5, 172)];
    [bezier3Path addLineToPoint: CGPointMake(54, 178.5)];
    [bezier3Path addLineToPoint: CGPointMake(53.5, 186)];
    [bezier3Path moveToPoint: CGPointMake(52.5, 174.5)];
    [bezier3Path addLineToPoint: CGPointMake(51.5, 184)];
    [bezier3Path moveToPoint: CGPointMake(62.5, 187)];
    [bezier3Path addLineToPoint: CGPointMake(63, 193)];
    [bezier3Path moveToPoint: CGPointMake(64.5, 194)];
    [bezier3Path addLineToPoint: CGPointMake(64.5, 208.5)];
    [bezier3Path moveToPoint: CGPointMake(80, 174.5)];
    [bezier3Path addLineToPoint: CGPointMake(80.5, 185.5)];
    [bezier3Path addLineToPoint: CGPointMake(81.5, 194)];
    [bezier3Path moveToPoint: CGPointMake(191.5, 141)];
    [bezier3Path addLineToPoint: CGPointMake(192, 145.5)];
    [bezier3Path addLineToPoint: CGPointMake(194.5, 152)];
    [bezier3Path addLineToPoint: CGPointMake(195.04, 154.5)];
    [bezier3Path moveToPoint: CGPointMake(194.5, 166.5)];
    [bezier3Path addLineToPoint: CGPointMake(196, 159)];
    [bezier3Path addLineToPoint: CGPointMake(195.04, 154.5)];
    [bezier3Path moveToPoint: CGPointMake(196, 140.5)];
    [bezier3Path addLineToPoint: CGPointMake(195.5, 146.5)];
    [bezier3Path addLineToPoint: CGPointMake(195.04, 154.5)];
    [bezier3Path moveToPoint: CGPointMake(207.5, 133.5)];
    [bezier3Path addLineToPoint: CGPointMake(205.5, 141)];
    [bezier3Path addLineToPoint: CGPointMake(203.5, 148.5)];
    [bezier3Path moveToPoint: CGPointMake(226, 144)];
    [bezier3Path addLineToPoint: CGPointMake(227.5, 153.5)];
    [bezier3Path addLineToPoint: CGPointMake(233.5, 166.5)];
    [bezier3Path moveToPoint: CGPointMake(205.5, 188.5)];
    [bezier3Path addLineToPoint: CGPointMake(210, 196)];
    [bezier3Path addLineToPoint: CGPointMake(215, 201.5)];
    [bezier3Path moveToPoint: CGPointMake(203.5, 202)];
    [bezier3Path addLineToPoint: CGPointMake(198, 198.5)];
    [bezier3Path moveToPoint: CGPointMake(253.5, 151)];
    [bezier3Path addLineToPoint: CGPointMake(253.5, 154.5)];
    [bezier3Path moveToPoint: CGPointMake(258, 153.5)];
    [bezier3Path addLineToPoint: CGPointMake(258, 158.5)];
    [bezier3Path addLineToPoint: CGPointMake(260.5, 162.5)];
    [bezier3Path moveToPoint: CGPointMake(119.5, 136)];
    [bezier3Path addLineToPoint: CGPointMake(121.5, 145.5)];
    [bezier3Path addLineToPoint: CGPointMake(126.5, 148.5)];
    [bezier3Path addLineToPoint: CGPointMake(129, 154.5)];
    [bezier3Path moveToPoint: CGPointMake(219, 116.5)];
    [bezier3Path addLineToPoint: CGPointMake(221, 120)];
    [bezier3Path addLineToPoint: CGPointMake(221, 124)];
    [bezier3Path moveToPoint: CGPointMake(215, 122.5)];
    [bezier3Path addLineToPoint: CGPointMake(213.5, 132.5)];
    [bezier3Path moveToPoint: CGPointMake(223.5, 196)];
    [bezier3Path addLineToPoint: CGPointMake(226, 197.5)];
    [bezier3Path addLineToPoint: CGPointMake(231, 199.5)];
    [bezier3Path addLineToPoint: CGPointMake(239.5, 206.5)];
    [bezier3Path moveToPoint: CGPointMake(159.5, 174.5)];
    [bezier3Path addLineToPoint: CGPointMake(162, 181)];
    [bezier3Path addLineToPoint: CGPointMake(168.5, 188.5)];
//    [strokeColor setStroke];
    bezier3Path.lineWidth = 0.5;
    bezier3Path.miterLimit = 4;
    bezier3Path.lineCapStyle = kCGLineCapRound;
//    [bezier3Path stroke];
    
    return bezier3Path;
}

-(UIBezierPath*)drawLandscapeGround {
//    UIColor* strokeColor = self.colorsSelected[2];
    
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(35.5, 213.5)];
    [bezier2Path addLineToPoint: CGPointMake(50, 213.5)];
    [bezier2Path addLineToPoint: CGPointMake(64, 210)];
    [bezier2Path addLineToPoint: CGPointMake(81.5, 200.5)];
    [bezier2Path addLineToPoint: CGPointMake(98.5, 195.5)];
    [bezier2Path addLineToPoint: CGPointMake(114.5, 202)];
    [bezier2Path addLineToPoint: CGPointMake(127.25, 207.75)];
    [bezier2Path moveToPoint: CGPointMake(140, 213.5)];
    [bezier2Path addLineToPoint: CGPointMake(127.25, 207.75)];
    [bezier2Path moveToPoint: CGPointMake(127.25, 207.75)];
    [bezier2Path addLineToPoint: CGPointMake(140, 204)];
    [bezier2Path addLineToPoint: CGPointMake(150, 205.5)];
    [bezier2Path addLineToPoint: CGPointMake(159.5, 207.75)];
    [bezier2Path addLineToPoint: CGPointMake(173, 210)];
    [bezier2Path addLineToPoint: CGPointMake(195, 217.5)];
    [bezier2Path moveToPoint: CGPointMake(185.5, 220)];
    [bezier2Path addLineToPoint: CGPointMake(198, 217.5)];
    [bezier2Path addLineToPoint: CGPointMake(208.5, 212)];
    [bezier2Path addLineToPoint: CGPointMake(222.5, 212)];
    [bezier2Path addLineToPoint: CGPointMake(237, 212)];
    [bezier2Path addLineToPoint: CGPointMake(257, 207.75)];
    [bezier2Path moveToPoint: CGPointMake(56.5, 241.5)];
    [bezier2Path addLineToPoint: CGPointMake(70.5, 241.5)];
    [bezier2Path addLineToPoint: CGPointMake(87.5, 238)];
    [bezier2Path addLineToPoint: CGPointMake(104.5, 241.5)];
    [bezier2Path addLineToPoint: CGPointMake(129, 244.5)];
    [bezier2Path addLineToPoint: CGPointMake(173, 249)];
    [bezier2Path moveToPoint: CGPointMake(140, 258.5)];
    [bezier2Path addLineToPoint: CGPointMake(163.5, 252.5)];
    [bezier2Path addLineToPoint: CGPointMake(185.5, 241.5)];
    [bezier2Path addLineToPoint: CGPointMake(198, 235)];
    [bezier2Path addLineToPoint: CGPointMake(216.5, 235)];
    [bezier2Path addLineToPoint: CGPointMake(238.5, 235)];
    [bezier2Path moveToPoint: CGPointMake(86, 265)];
    [bezier2Path addLineToPoint: CGPointMake(98.5, 262.5)];
    [bezier2Path addLineToPoint: CGPointMake(123, 265)];
    [bezier2Path addLineToPoint: CGPointMake(151, 266)];
    [bezier2Path addLineToPoint: CGPointMake(173, 266)];
    [bezier2Path addLineToPoint: CGPointMake(195, 258.5)];
    [bezier2Path addLineToPoint: CGPointMake(218, 256)];
//    [strokeColor setStroke];
    bezier2Path.lineWidth = 1;
    bezier2Path.miterLimit = 4;
    bezier2Path.lineCapStyle = kCGLineCapRound;
//    [bezier2Path stroke];
    
    return bezier2Path;
}

-(void)drawLandscape {
    // How can I scale this path to work with different sized screens?
    // https://stackoverflow.com/questions/35363104/animating-bezier-curve-as-though-drawing-proceeds-on-iphone-screen
    
    NSArray<CAShapeLayer*> *shapeLayers = [[NSArray alloc] initWithObjects:[CAShapeLayer layer], [CAShapeLayer layer], [CAShapeLayer layer], nil];
    for (int i = 0; i < shapeLayers.count; i++) {
        UIBezierPath* path = [self landscapeDrawings][i];
        shapeLayers[i].path = path.CGPath;
        shapeLayers[i].fillColor = [UIColor clearColor].CGColor; // prevent the shape layer from filling
        [self.layer addSublayer:shapeLayers[i]];
        
        if (i > self.colorsSelected.count - 1) {
            shapeLayers[i].strokeColor = [UIColor blackColor].CGColor;
        } else {
            shapeLayers[i].strokeColor = self.colorsSelected[i].CGColor; // цвет линии рисования
        }

        shapeLayers[i].strokeStart = 0.0; // начало пути относительно координат stroke?
        [shapeLayers[i] addAnimation:[[self class] setupDrawsAnimation] forKey:nil];
        path = nil;
    }
}

-(NSArray<UIBezierPath*> *) landscapeDrawings {
    if (landscapeDrawings == nil) {
        NSArray *drawingCGPaths = [[NSArray alloc] initWithObjects:[
                                                                 self drawLandscapeHorizon],
        [self drawLandscapeMountains],
        [self drawLandscapeGround],
        nil
        ];
        landscapeDrawings = drawingCGPaths;
    }
    return landscapeDrawings;
}

+(CABasicAnimation*) setupDrawsAnimation {
    CABasicAnimation *drawingAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    drawingAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    drawingAnimation.duration = 1.0;
    drawingAnimation.fromValue = @(0.0); // часть изображения, отрисованная до начала анимации
    drawingAnimation.toValue = @(1.0); //cкорость отрисовки. Если длится дольше, чем duration, то часть изображения отрисуется анимированно, а часть - мгновенно
    
    return drawingAnimation;
}

-(void) drawPlanet {
    // This code was generated by Trial version of PaintCode, therefore cannot be used for commercial purposes.
    // http://www.paintcodeapp.com

    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];

    //// planet.svg Group
    {
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(64.75, 154)];
        [bezierPath addLineToPoint: CGPointMake(56.07, 158)];
        [bezierPath addLineToPoint: CGPointMake(47.4, 165)];
        [bezierPath addLineToPoint: CGPointMake(39.21, 173)];
        [bezierPath addLineToPoint: CGPointMake(33.43, 181)];
        [bezierPath addLineToPoint: CGPointMake(31.5, 189)];
        [bezierPath addLineToPoint: CGPointMake(32.46, 197)];
        [bezierPath addLineToPoint: CGPointMake(36.32, 203.5)];
        [bezierPath addLineToPoint: CGPointMake(43.06, 209)];
        [bezierPath addLineToPoint: CGPointMake(53.18, 213.5)];
        [bezierPath addLineToPoint: CGPointMake(63.78, 216)];
        [bezierPath addLineToPoint: CGPointMake(74.87, 217)];
        [bezierPath addLineToPoint: CGPointMake(85.47, 217.5)];
        [bezierPath addLineToPoint: CGPointMake(91.73, 217.3)];
        [bezierPath moveToPoint: CGPointMake(64.75, 154)];
        [bezierPath addLineToPoint: CGPointMake(65.23, 147)];
        [bezierPath addLineToPoint: CGPointMake(67.64, 134.5)];
        [bezierPath addLineToPoint: CGPointMake(71.01, 124)];
        [bezierPath addLineToPoint: CGPointMake(75.35, 112.5)];
        [bezierPath addLineToPoint: CGPointMake(80.65, 104)];
        [bezierPath addLineToPoint: CGPointMake(87.4, 94.5)];
        [bezierPath addLineToPoint: CGPointMake(95.1, 87)];
        [bezierPath addLineToPoint: CGPointMake(102.81, 81.5)];
        [bezierPath addLineToPoint: CGPointMake(111.01, 76.5)];
        [bezierPath addCurveToPoint: CGPointMake(122.09, 71.5) controlPoint1: CGPointMake(114.54, 75) controlPoint2: CGPointMake(121.7, 71.9)];
        [bezierPath addCurveToPoint: CGPointMake(132.69, 68) controlPoint1: CGPointMake(122.47, 71.1) controlPoint2: CGPointMake(129.32, 69)];
        [bezierPath addLineToPoint: CGPointMake(148.59, 66.5)];
        [bezierPath addLineToPoint: CGPointMake(162.08, 67.5)];
        [bezierPath addLineToPoint: CGPointMake(175.57, 70)];
        [bezierPath addLineToPoint: CGPointMake(187.62, 75)];
        [bezierPath addLineToPoint: CGPointMake(199.19, 82.5)];
        [bezierPath addLineToPoint: CGPointMake(207.38, 89.5)];
        [bezierPath addLineToPoint: CGPointMake(214.12, 96.5)];
        [bezierPath addLineToPoint: CGPointMake(219.91, 103.5)];
        [bezierPath moveToPoint: CGPointMake(64.75, 154)];
        [bezierPath addLineToPoint: CGPointMake(64.75, 160.5)];
        [bezierPath addLineToPoint: CGPointMake(65.71, 168)];
        [bezierPath moveToPoint: CGPointMake(219.91, 103.5)];
        [bezierPath addLineToPoint: CGPointMake(228.58, 102)];
        [bezierPath addLineToPoint: CGPointMake(240.14, 101.5)];
        [bezierPath addLineToPoint: CGPointMake(251.23, 103)];
        [bezierPath addLineToPoint: CGPointMake(261.34, 107)];
        [bezierPath addLineToPoint: CGPointMake(268.09, 112.5)];
        [bezierPath addLineToPoint: CGPointMake(270.5, 120)];
        [bezierPath addLineToPoint: CGPointMake(270.02, 129)];
        [bezierPath addLineToPoint: CGPointMake(266.65, 137.5)];
        [bezierPath addLineToPoint: CGPointMake(256.53, 151)];
        [bezierPath addLineToPoint: CGPointMake(248.33, 159.5)];
        [bezierPath addLineToPoint: CGPointMake(235.81, 169.5)];
        [bezierPath addLineToPoint: CGPointMake(232.59, 171.5)];
        [bezierPath moveToPoint: CGPointMake(219.91, 103.5)];
        [bezierPath addLineToPoint: CGPointMake(223.28, 108.5)];
        [bezierPath addLineToPoint: CGPointMake(226.17, 115)];
        [bezierPath moveToPoint: CGPointMake(65.71, 168)];
        [bezierPath addLineToPoint: CGPointMake(61.86, 170.5)];
        [bezierPath addLineToPoint: CGPointMake(58.48, 175)];
        [bezierPath addLineToPoint: CGPointMake(57.04, 180)];
        [bezierPath addLineToPoint: CGPointMake(57.52, 185)];
        [bezierPath addLineToPoint: CGPointMake(59.93, 189)];
        [bezierPath addLineToPoint: CGPointMake(64.75, 192)];
        [bezierPath addLineToPoint: CGPointMake(71.98, 195)];
        [bezierPath addLineToPoint: CGPointMake(74.39, 195.47)];
        [bezierPath moveToPoint: CGPointMake(65.71, 168)];
        [bezierPath addLineToPoint: CGPointMake(68.12, 176.5)];
        [bezierPath addLineToPoint: CGPointMake(70.53, 185)];
        [bezierPath addLineToPoint: CGPointMake(74.39, 195.47)];
        [bezierPath moveToPoint: CGPointMake(226.17, 115)];
        [bezierPath addLineToPoint: CGPointMake(232.43, 115)];
        [bezierPath addLineToPoint: CGPointMake(240.14, 118)];
        [bezierPath addLineToPoint: CGPointMake(243.03, 122)];
        [bezierPath addLineToPoint: CGPointMake(243.52, 128)];
        [bezierPath addLineToPoint: CGPointMake(242.07, 133.5)];
        [bezierPath addLineToPoint: CGPointMake(238.22, 139)];
        [bezierPath addLineToPoint: CGPointMake(234.68, 143)];
        [bezierPath moveToPoint: CGPointMake(226.17, 115)];
        [bezierPath addLineToPoint: CGPointMake(229.06, 122)];
        [bezierPath addLineToPoint: CGPointMake(232.59, 133.5)];
        [bezierPath addLineToPoint: CGPointMake(234.68, 143)];
        [bezierPath moveToPoint: CGPointMake(91.73, 217.3)];
        [bezierPath addLineToPoint: CGPointMake(101.37, 217)];
        [bezierPath addLineToPoint: CGPointMake(121.61, 214.5)];
        [bezierPath addLineToPoint: CGPointMake(138.47, 211)];
        [bezierPath addLineToPoint: CGPointMake(153.41, 207)];
        [bezierPath addLineToPoint: CGPointMake(172.2, 201)];
        [bezierPath addLineToPoint: CGPointMake(190.99, 193.5)];
        [bezierPath addLineToPoint: CGPointMake(205.93, 186.5)];
        [bezierPath addLineToPoint: CGPointMake(221.35, 178.5)];
        [bezierPath addLineToPoint: CGPointMake(232.59, 171.5)];
        [bezierPath moveToPoint: CGPointMake(91.73, 217.3)];
        [bezierPath addLineToPoint: CGPointMake(96.55, 223)];
        [bezierPath addLineToPoint: CGPointMake(104.26, 229)];
        [bezierPath addLineToPoint: CGPointMake(112.93, 233.5)];
        [bezierPath addLineToPoint: CGPointMake(121.61, 237)];
        [bezierPath addLineToPoint: CGPointMake(132.21, 240.5)];
        [bezierPath addLineToPoint: CGPointMake(144.25, 242.5)];
        [bezierPath addLineToPoint: CGPointMake(155.82, 242.5)];
        [bezierPath addLineToPoint: CGPointMake(166.42, 241.5)];
        [bezierPath addLineToPoint: CGPointMake(175.57, 239)];
        [bezierPath addLineToPoint: CGPointMake(182.8, 236)];
        [bezierPath addLineToPoint: CGPointMake(191.96, 231.5)];
        [bezierPath addLineToPoint: CGPointMake(199.19, 226.5)];
        [bezierPath addLineToPoint: CGPointMake(204.97, 222)];
        [bezierPath addLineToPoint: CGPointMake(212.68, 213.5)];
        [bezierPath addLineToPoint: CGPointMake(220.39, 203.5)];
        [bezierPath addLineToPoint: CGPointMake(225.69, 194)];
        [bezierPath addLineToPoint: CGPointMake(230.51, 182)];
        [bezierPath addLineToPoint: CGPointMake(232.59, 171.5)];
        [bezierPath moveToPoint: CGPointMake(234.68, 143)];
        [bezierPath addLineToPoint: CGPointMake(232.92, 145)];
        [bezierPath addLineToPoint: CGPointMake(228.1, 150)];
        [bezierPath addLineToPoint: CGPointMake(222.31, 154.5)];
        [bezierPath addLineToPoint: CGPointMake(215.09, 159.5)];
        [bezierPath addLineToPoint: CGPointMake(208.34, 164)];
        [bezierPath addLineToPoint: CGPointMake(201.59, 168)];
        [bezierPath addLineToPoint: CGPointMake(194.85, 171.5)];
        [bezierPath addLineToPoint: CGPointMake(186.18, 176)];
        [bezierPath addLineToPoint: CGPointMake(175.09, 181)];
        [bezierPath addLineToPoint: CGPointMake(164.01, 185)];
        [bezierPath addLineToPoint: CGPointMake(152.45, 188.5)];
        [bezierPath addLineToPoint: CGPointMake(141.36, 191.5)];
        [bezierPath addLineToPoint: CGPointMake(129.8, 194)];
        [bezierPath addLineToPoint: CGPointMake(118.23, 196)];
        [bezierPath addLineToPoint: CGPointMake(106.67, 197)];
        [bezierPath addLineToPoint: CGPointMake(95.59, 197.5)];
        [bezierPath addLineToPoint: CGPointMake(86.91, 197)];
        [bezierPath addLineToPoint: CGPointMake(79.69, 196.5)];
        [bezierPath addLineToPoint: CGPointMake(74.39, 195.47)];
        [strokeColor setStroke];
        bezierPath.lineWidth = 1;
        bezierPath.miterLimit = 4;
        bezierPath.lineCapStyle = kCGLineCapRound;
        [bezierPath stroke];


        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(156.78, 114.5)];
        [bezier2Path addLineToPoint: CGPointMake(162.56, 111.5)];
        [bezier2Path addLineToPoint: CGPointMake(171.72, 106)];
        [bezier2Path addLineToPoint: CGPointMake(180.88, 99)];
        [bezier2Path addLineToPoint: CGPointMake(187.14, 92)];
        [bezier2Path addLineToPoint: CGPointMake(190.99, 85)];
        [bezier2Path addLineToPoint: CGPointMake(193.4, 79)];
        [bezier2Path moveToPoint: CGPointMake(111.97, 93)];
        [bezier2Path addLineToPoint: CGPointMake(105.22, 92.5)];
        [bezier2Path addLineToPoint: CGPointMake(99.44, 90.5)];
        [bezier2Path addLineToPoint: CGPointMake(94.62, 87.5)];
        [bezier2Path moveToPoint: CGPointMake(122.09, 91.5)];
        [bezier2Path addLineToPoint: CGPointMake(129.32, 89.5)];
        [bezier2Path addLineToPoint: CGPointMake(137.03, 87)];
        [bezier2Path addLineToPoint: CGPointMake(144.74, 82.5)];
        [bezier2Path addCurveToPoint: CGPointMake(151.96, 77) controlPoint1: CGPointMake(146.98, 80.83) controlPoint2: CGPointMake(151.58, 77.4)];
        [bezier2Path addCurveToPoint: CGPointMake(156.3, 72) controlPoint1: CGPointMake(152.35, 76.6) controlPoint2: CGPointMake(155.02, 73.5)];
        [bezier2Path addLineToPoint: CGPointMake(158.23, 67.5)];
        [bezier2Path moveToPoint: CGPointMake(100.41, 108.5)];
        [bezier2Path addLineToPoint: CGPointMake(104.74, 109.5)];
        [bezier2Path addLineToPoint: CGPointMake(111.97, 109.5)];
        [bezier2Path addLineToPoint: CGPointMake(119.68, 108.5)];
        [bezier2Path addLineToPoint: CGPointMake(126.43, 107)];
        [bezier2Path addLineToPoint: CGPointMake(134.62, 105)];
        [bezier2Path moveToPoint: CGPointMake(105.71, 128)];
        [bezier2Path addCurveToPoint: CGPointMake(109.56, 127.5) controlPoint1: CGPointMake(106.09, 128) controlPoint2: CGPointMake(108.44, 127.67)];
        [bezier2Path addLineToPoint: CGPointMake(113.9, 127)];
        [bezier2Path addLineToPoint: CGPointMake(117.75, 126)];
        [bezier2Path moveToPoint: CGPointMake(97.51, 127.5)];
        [bezier2Path addLineToPoint: CGPointMake(90.29, 127)];
        [bezier2Path addLineToPoint: CGPointMake(83.54, 124.5)];
        [bezier2Path addCurveToPoint: CGPointMake(77.28, 121.5) controlPoint1: CGPointMake(81.61, 123.5) controlPoint2: CGPointMake(77.66, 121.5)];
        [bezier2Path addCurveToPoint: CGPointMake(72.94, 119) controlPoint1: CGPointMake(76.89, 121.5) controlPoint2: CGPointMake(74.22, 119.83)];
        [bezier2Path moveToPoint: CGPointMake(89.8, 166.5)];
        [bezier2Path addLineToPoint: CGPointMake(82.09, 165)];
        [bezier2Path addLineToPoint: CGPointMake(73.42, 161.5)];
        [bezier2Path addLineToPoint: CGPointMake(64.75, 156)];
        [bezier2Path moveToPoint: CGPointMake(109.08, 166.5)];
        [bezier2Path addLineToPoint: CGPointMake(114.38, 166.5)];
        [bezier2Path addLineToPoint: CGPointMake(118.72, 166)];
        [bezier2Path addLineToPoint: CGPointMake(127.39, 164.5)];
        [bezier2Path addLineToPoint: CGPointMake(137.51, 162)];
        [bezier2Path addLineToPoint: CGPointMake(146.66, 159.5)];
        [bezier2Path addLineToPoint: CGPointMake(155.82, 156.5)];
        [bezier2Path addLineToPoint: CGPointMake(164.97, 153.5)];
        [bezier2Path addLineToPoint: CGPointMake(174.61, 149)];
        [bezier2Path addLineToPoint: CGPointMake(183.77, 144.5)];
        [bezier2Path addLineToPoint: CGPointMake(191.48, 139.5)];
        [bezier2Path addLineToPoint: CGPointMake(197.26, 135.5)];
        [bezier2Path addLineToPoint: CGPointMake(202.56, 132)];
        [bezier2Path moveToPoint: CGPointMake(210.75, 124)];
        [bezier2Path addLineToPoint: CGPointMake(214.6, 119)];
        [bezier2Path addLineToPoint: CGPointMake(217.98, 113)];
        [bezier2Path addLineToPoint: CGPointMake(220.87, 105.5)];
        [bezier2Path moveToPoint: CGPointMake(127.39, 145)];
        [bezier2Path addLineToPoint: CGPointMake(135.1, 143)];
        [bezier2Path addLineToPoint: CGPointMake(147.63, 139)];
        [bezier2Path addLineToPoint: CGPointMake(155.82, 136)];
        [bezier2Path addLineToPoint: CGPointMake(164.49, 132)];
        [bezier2Path addLineToPoint: CGPointMake(171.72, 128.5)];
        [bezier2Path addLineToPoint: CGPointMake(177.98, 125)];
        [bezier2Path moveToPoint: CGPointMake(89.8, 184)];
        [bezier2Path addLineToPoint: CGPointMake(96.55, 184.5)];
        [bezier2Path addLineToPoint: CGPointMake(103.78, 184.5)];
        [bezier2Path addLineToPoint: CGPointMake(111.49, 183.5)];
        [bezier2Path moveToPoint: CGPointMake(190.03, 159.5)];
        [bezier2Path addLineToPoint: CGPointMake(195.81, 157.5)];
        [bezier2Path addLineToPoint: CGPointMake(203.04, 153)];
        [bezier2Path addLineToPoint: CGPointMake(211.71, 146)];
        [bezier2Path addLineToPoint: CGPointMake(217.5, 141.5)];
        [bezier2Path addLineToPoint: CGPointMake(221.35, 137)];
        [bezier2Path moveToPoint: CGPointMake(167.38, 213.5)];
        [bezier2Path addLineToPoint: CGPointMake(171.72, 212.5)];
        [bezier2Path addLineToPoint: CGPointMake(180.39, 209)];
        [bezier2Path addLineToPoint: CGPointMake(188.1, 205.5)];
        [bezier2Path addLineToPoint: CGPointMake(194.37, 202.5)];
        [bezier2Path addLineToPoint: CGPointMake(200.15, 199.5)];
        [bezier2Path addLineToPoint: CGPointMake(202.56, 196.5)];
        [bezier2Path moveToPoint: CGPointMake(207.38, 209)];
        [bezier2Path addLineToPoint: CGPointMake(213.16, 205.5)];
        [bezier2Path addLineToPoint: CGPointMake(218.46, 201.5)];
        [bezier2Path addLineToPoint: CGPointMake(225.69, 194)];
        [bezier2Path moveToPoint: CGPointMake(197.26, 215)];
        [bezier2Path addLineToPoint: CGPointMake(190.03, 218.5)];
        [bezier2Path addLineToPoint: CGPointMake(179.91, 222.5)];
        [bezier2Path addLineToPoint: CGPointMake(170.27, 226)];
        [bezier2Path addLineToPoint: CGPointMake(159.67, 229)];
        [bezier2Path addLineToPoint: CGPointMake(149.55, 231.5)];
        [bezier2Path addLineToPoint: CGPointMake(136.06, 233)];
        [bezier2Path addLineToPoint: CGPointMake(123.05, 233.5)];
        [bezier2Path addLineToPoint: CGPointMake(111.97, 233)];
        [strokeColor setStroke];
        bezier2Path.lineWidth = 1;
        bezier2Path.miterLimit = 4;
        bezier2Path.lineCapStyle = kCGLineCapRound;
        [bezier2Path stroke];


        //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(249.78, 181)];
        [bezier3Path addLineToPoint: CGPointMake(254.6, 177.5)];
        [bezier3Path addLineToPoint: CGPointMake(261.34, 178)];
        [bezier3Path addLineToPoint: CGPointMake(265.68, 181.5)];
        [bezier3Path addLineToPoint: CGPointMake(267.13, 186.5)];
        [bezier3Path addLineToPoint: CGPointMake(266.16, 191)];
        [bezier3Path addLineToPoint: CGPointMake(263.27, 195.5)];
        [bezier3Path addLineToPoint: CGPointMake(258.45, 197)];
        [bezier3Path addLineToPoint: CGPointMake(252.67, 196)];
        [bezier3Path addLineToPoint: CGPointMake(248.82, 192)];
        [bezier3Path addLineToPoint: CGPointMake(247.37, 187)];
        [bezier3Path addLineToPoint: CGPointMake(249.78, 181)];
        [bezier3Path closePath];
        [strokeColor setStroke];
        bezier3Path.lineWidth = 1;
        bezier3Path.miterLimit = 4;
        bezier3Path.lineCapStyle = kCGLineCapRound;
        [bezier3Path stroke];


        //// Bezier 4 Drawing
        UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
        [bezier4Path moveToPoint: CGPointMake(237.73, 211)];
        [bezier4Path addLineToPoint: CGPointMake(239.66, 209)];
        [bezier4Path addLineToPoint: CGPointMake(242.07, 209)];
        [bezier4Path addLineToPoint: CGPointMake(244, 210.5)];
        [bezier4Path addLineToPoint: CGPointMake(244.48, 213)];
        [bezier4Path addLineToPoint: CGPointMake(243.52, 215)];
        [bezier4Path addLineToPoint: CGPointMake(241.11, 216)];
        [bezier4Path addLineToPoint: CGPointMake(238.7, 215.5)];
        [bezier4Path addLineToPoint: CGPointMake(237.25, 213.5)];
        [bezier4Path addLineToPoint: CGPointMake(237.73, 211)];
        [bezier4Path closePath];
        [strokeColor setStroke];
        bezier4Path.lineWidth = 1;
        bezier4Path.miterLimit = 4;
        bezier4Path.lineCapStyle = kCGLineCapRound;
        [bezier4Path stroke];


        //// Bezier 5 Drawing
        UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
        [bezier5Path moveToPoint: CGPointMake(78.24, 242)];
        [bezier5Path addLineToPoint: CGPointMake(80.17, 241)];
        [bezier5Path addLineToPoint: CGPointMake(83.06, 242)];
        [bezier5Path addCurveToPoint: CGPointMake(84.5, 244.5) controlPoint1: CGPointMake(83.54, 242.67) controlPoint2: CGPointMake(84.5, 244.1)];
        [bezier5Path addCurveToPoint: CGPointMake(84.5, 247.5) controlPoint1: CGPointMake(84.5, 244.9) controlPoint2: CGPointMake(84.66, 246.83)];
        [bezier5Path addLineToPoint: CGPointMake(82.09, 249)];
        [bezier5Path addLineToPoint: CGPointMake(78.72, 249)];
        [bezier5Path addLineToPoint: CGPointMake(77.28, 247)];
        [bezier5Path addLineToPoint: CGPointMake(76.79, 244.5)];
        [bezier5Path addLineToPoint: CGPointMake(78.24, 242)];
        [bezier5Path closePath];
        [strokeColor setStroke];
        bezier5Path.lineWidth = 1;
        bezier5Path.miterLimit = 4;
        bezier5Path.lineCapStyle = kCGLineCapRound;
        [bezier5Path stroke];


        //// Bezier 6 Drawing
        UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
        [bezier6Path moveToPoint: CGPointMake(40.66, 76.5)];
        [bezier6Path addCurveToPoint: CGPointMake(46.44, 72) controlPoint1: CGPointMake(42.42, 75) controlPoint2: CGPointMake(46.05, 72)];
        [bezier6Path addLineToPoint: CGPointMake(52.7, 71)];
        [bezier6Path addLineToPoint: CGPointMake(58.97, 73)];
        [bezier6Path addLineToPoint: CGPointMake(64.75, 80)];
        [bezier6Path addLineToPoint: CGPointMake(65.23, 89.5)];
        [bezier6Path addLineToPoint: CGPointMake(61.38, 97)];
        [bezier6Path addLineToPoint: CGPointMake(53.18, 101)];
        [bezier6Path addLineToPoint: CGPointMake(44.51, 99)];
        [bezier6Path addLineToPoint: CGPointMake(38.73, 94.5)];
        [bezier6Path addLineToPoint: CGPointMake(36.8, 85.5)];
        [bezier6Path addLineToPoint: CGPointMake(40.66, 76.5)];
        [bezier6Path closePath];
        [strokeColor setStroke];
        bezier6Path.lineWidth = 1;
        bezier6Path.miterLimit = 4;
        bezier6Path.lineCapStyle = kCGLineCapRound;
        [bezier6Path stroke];


        //// Bezier 7 Drawing
        UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
        [bezier7Path moveToPoint: CGPointMake(215.57, 51)];
        [bezier7Path addCurveToPoint: CGPointMake(220.87, 50) controlPoint1: CGPointMake(216.53, 50.67) controlPoint2: CGPointMake(220.48, 50)];
        [bezier7Path addLineToPoint: CGPointMake(225.21, 53)];
        [bezier7Path addLineToPoint: CGPointMake(225.69, 58)];
        [bezier7Path addLineToPoint: CGPointMake(223.76, 62)];
        [bezier7Path addLineToPoint: CGPointMake(218.94, 63.5)];
        [bezier7Path addLineToPoint: CGPointMake(214.12, 61)];
        [bezier7Path addLineToPoint: CGPointMake(212.68, 55.5)];
        [bezier7Path addLineToPoint: CGPointMake(215.57, 51)];
        [bezier7Path closePath];
        [strokeColor setStroke];
        bezier7Path.lineWidth = 1;
        bezier7Path.miterLimit = 4;
        bezier7Path.lineCapStyle = kCGLineCapRound;
        [bezier7Path stroke];
    }
}

@end
