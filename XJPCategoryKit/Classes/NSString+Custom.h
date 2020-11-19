//
//  NSString+Custom.h
//  FunctionCodeBlockDemo
//
//  Created by 谢佳培 on 2020/9/25.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Custom)

#pragma mark - 格式校验

/** 判断一个字符串是否都是纯数字 */
- (BOOL)judgeIsPureInt;

#pragma mark - 字符串尺寸

/** 计算字符串长度（一行时候）*/
- (CGSize)textSizeWithFont:(UIFont*)font limitWidth:(CGFloat)maxWidth;

/**根据字体、行数、行间距和指定的宽度constrainedWidth计算文本占据的size
 * @param font 字体
 * @param numberOfLines 显示文本行数，值为0不限制行数
 * @param lineSpacing 行间距
 * @param constrainedWidth 文本指定的宽度
 * @return 返回文本占据的size
 */
- (CGSize)textSizeWithFont:(UIFont*)font
             numberOfLines:(NSInteger)numberOfLines
               lineSpacing:(CGFloat)lineSpacing
          constrainedWidth:(CGFloat)constrainedWidth;

#pragma mark - 安全截取字符串

/// 从字符串的起始处提取到某个位置结束
- (NSString *)substringToIndexSafe:(NSUInteger)to;

/// 从字符串的某个位置开始提取直到字符串的末尾
- (NSString *)substringFromIndexSafe:(NSInteger)from;

/// 删除字符串中的首字符
- (NSString *)deleteFirstCharacter;

/// 删除字符串中的末尾字符
- (NSString *)deleteLastCharacter;




@end

NS_ASSUME_NONNULL_END
