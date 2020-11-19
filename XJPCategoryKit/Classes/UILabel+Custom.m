//
//  UILabel+Custom.m
//  FunctionCodeBlockDemo
//
//  Created by 谢佳培 on 2020/9/28.
//

#import "UILabel+Custom.h"

@implementation UILabel (Custom)

// 改变行、字间距
- (void)changeLabelWithLineSpace:(float)lineSpace WordSpace:(float)wordSpace
{
    NSString *labelText = self.text;
    
    // 改变字间距
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(wordSpace)}];
    
    // 改变行间距
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    
    self.attributedText = attributedString;
    [self sizeToFit];
}

@end
