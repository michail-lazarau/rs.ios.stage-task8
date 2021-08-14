//
//  CanvasDrawingView+Landscape.h
//  michail-lazarau-Task8
//
//  Created by Mikhail Lazarau on 7.08.21.
//

#import "CanvasDrawingView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CanvasDrawingView (Landscape)

- (UIBezierPath*) drawLandscapeHorizon;
- (UIBezierPath*) drawLandscapeMountains;
- (UIBezierPath*) drawLandscapeGround;

@end

NS_ASSUME_NONNULL_END
