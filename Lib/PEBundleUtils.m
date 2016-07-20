//
//  PEBundleUtils.m
//  Pods
//
//  Created by xzming on 16/7/18.
//
//

#import "PEBundleUtils.h"

@implementation PEBundleUtils

+ (NSBundle *)bundle
{
    static NSBundle *bundle;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSBundle *bundleForClass = [NSBundle bundleForClass:[self class]];
        NSString *stringsBundlePath = [bundleForClass pathForResource:@"PEPhotoCropEditor" ofType:@"bundle"];
        bundle = [NSBundle bundleWithPath:stringsBundlePath] ?: bundleForClass;
    });
    
    return bundle;
}

@end
