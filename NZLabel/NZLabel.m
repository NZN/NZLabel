//
//  NZLabel.m
//  NZLabel
//
//  Created by Bruno Furtado on 03/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZLabel.h"

@interface NZLabel ()

- (NSMutableAttributedString *)attributedString;

@end



@implementation NZLabel

#pragma mark -
#pragma mark - Public methods

- (void)setBoldFontToRange:(NSRange)range
{
    NSString *fontNameBold = [NSString stringWithFormat:@"%@-Bold",
                              [[self.font familyName] stringByReplacingOccurrencesOfString:@" " withString:@""]];
    
    if (![UIFont fontWithName:fontNameBold size:self.font.pointSize]) {
#ifdef NZDEBUG
        NSLog(@"%s: Font not found: %@", __PRETTY_FUNCTION__, fontNameBold);
#endif
        return;
    }
    
    UIFont *font = [UIFont fontWithName:fontNameBold size:self.font.pointSize];
    
    NSMutableAttributedString *attributed = [self attributedString];
    [attributed addAttribute:NSFontAttributeName value:font range:range];
    
    self.attributedText = attributed;
}

- (void)setBoldFontToString:(NSString *)string
{
    NSRange range = [self.text rangeOfString:string];
    [self setBoldFontToRange:range];
}

- (void)setFontColor:(UIColor *)color range:(NSRange)range
{
    NSMutableAttributedString *attributed = [self attributedString];
    [attributed addAttribute:NSForegroundColorAttributeName value:color range:range];
    
    self.attributedText = attributed;
}

- (void)setFontColor:(UIColor *)color string:(NSString *)string
{
    NSRange range = [self.text rangeOfString:string];
    [self setFontColor:color range:range];
}

- (void)setFont:(UIFont *)font range:(NSRange)range
{
    NSMutableAttributedString *attributed = [self attributedString];
    [attributed addAttribute:NSFontAttributeName value:font range:range];
    
    self.attributedText = attributed;
}

- (void)setFont:(UIFont *)font string:(NSString *)string
{
    NSRange range = [self.text rangeOfString:string];
    [self setFont:font range:range];
}

#pragma mark -
#pragma mark - Private methods

- (NSMutableAttributedString *)attributedString
{
    return [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
}

@end
