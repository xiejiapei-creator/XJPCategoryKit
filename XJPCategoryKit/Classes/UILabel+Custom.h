//
//  UILabel+Custom.h
//  FunctionCodeBlockDemo
//
//  Created by 谢佳培 on 2020/9/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Custom)

/** 改变行、字间距 */
- (void)changeLabelWithLineSpace:(float)lineSpace WordSpace:(float)wordSpace;

@end

NS_ASSUME_NONNULL_END
