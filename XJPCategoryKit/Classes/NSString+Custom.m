//
//  NSString+Custom.m
//  FunctionCodeBlockDemo
//
//  Created by 谢佳培 on 2020/9/25.
//

#import "NSString+Custom.h"

@implementation NSString (Custom)

#pragma mark - 格式校验

// 判断一个字符串是否都是纯数字
- (BOOL)judgeIsPureInt
{
    NSScanner *scan = [NSScanner scannerWithString:self];
    int value;
    return [scan scanInt:&value] && [scan isAtEnd];
}

#pragma mark - 字符串尺寸

// 计算字符串长度（一行时候）
- (CGSize)textSizeWithFont:(UIFont*)font limitWidth:(CGFloat)maxWidth
{
    CGSize size = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, 36)options:(NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading)  attributes:@{ NSFontAttributeName : font} context:nil].size;
    
    size.width = size.width > maxWidth ? maxWidth : size.width;
    size.width = ceil(size.width);
    size.height = ceil(size.height);
    return size;
}

// 根据字体、行数、行间距和constrainedWidth计算文本占据的size
- (CGSize)textSizeWithFont:(UIFont*)font
             numberOfLines:(NSInteger)numberOfLines
               lineSpacing:(CGFloat)lineSpacing
          constrainedWidth:(CGFloat)constrainedWidth
{
    
    if (self.length == 0)
    {
        return CGSizeZero;
    }
    
    CGFloat oneLineHeight = font.lineHeight;
    CGSize textSize = [self boundingRectWithSize:CGSizeMake(constrainedWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
    
    // 行数
    CGFloat rows = textSize.height / oneLineHeight;
    CGFloat realHeight = oneLineHeight;
    
    
    if (numberOfLines == 0)// 0表示不限制行数，需要真实高度加上行间距
    {
        if (rows >= 1)
        {
            realHeight = (rows * oneLineHeight) + (rows - 1) * lineSpacing;
        }
    }
    else// 行数超过指定行数的时候，限制行数
    {
        
        if (rows > numberOfLines)
        {
            rows = numberOfLines;
        }
        realHeight = (rows * oneLineHeight) + (rows - 1) * lineSpacing;
    }
    
    // 返回真实的宽高
    return CGSizeMake(constrainedWidth, realHeight);
}

#pragma mark - 安全截取字符串

// 从字符串的起始处提取到某个位置结束
- (NSString *)substringToIndexSafe:(NSUInteger)to
{
    if (self == nil || [self isEqualToString:@""])
    {
        return @"";
    }
    if (to > self.length - 1)
    {
        return @"";
    }
    return  [self substringToIndex:to];
}

// 从字符串的某个位置开始提取直到字符串的末尾
- (NSString *)substringFromIndexSafe:(NSInteger)from
{
    if (self == nil || [self isEqualToString:@""])
    {
        return @"";
    }
    if (from > self.length - 1)
    {
        return @"";
    }
    return  [self substringFromIndex:from];
}

// 删除字符串中的首字符
- (NSString *)deleteFirstCharacter
{
    return [self substringFromIndexSafe:1];
}

// 删除字符串中的末尾字符
- (NSString *)deleteLastCharacter
{
    return [self substringToIndexSafe:self.length - 1];
}

@end
