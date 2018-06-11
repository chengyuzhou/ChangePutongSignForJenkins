//
//  main.m
//  ChangeSignForJenkins
//
//  Created by zhouchengyu on 2017/12/16.
//  Copyright © 2017年 zhouchengyu. All rights reserved.
//

#import <Foundation/Foundation.h>
void process (NSString * filePath) {
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithContentsOfFile:filePath];
    if (!dic) {
        return;
    }
    NSMutableDictionary *configDic = [dic[@"objects"] objectForKey:@"73B2D79718BC698D00308648"];
    if (configDic) {
        configDic [@"attributes"] [@"TargetAttributes"] [@"3C52E4C91FC1BEBB00AF650F"][@"ProvisioningStyle"] = @"Manual";
        configDic [@"attributes"] [@"TargetAttributes"] [@"3C52E4C91FC1BEBB00AF650F"][@"DevelopmentTeam"] = @"F6QSEMKSK2";
        configDic [@"attributes"] [@"TargetAttributes"] [@"73B2D79E18BC698D00308648"][@"ProvisioningStyle"] = @"Manual";
        configDic [@"attributes"] [@"TargetAttributes"] [@"73B2D79E18BC698D00308648"][@"DevelopmentTeam"] = @"F6QSEMKSK2";
        configDic [@"attributes"] [@"TargetAttributes"] [@"73B2D7B918BC698D00308648"][@"ProvisioningStyle"] = @"Manual";
        configDic [@"attributes"] [@"TargetAttributes"] [@"73B2D7B918BC698D00308648"][@"DevelopmentTeam"] = @"F6QSEMKSK2";
    }
    configDic = [dic[@"objects"] objectForKey:@"3C52E4D31FC1BEBB00AF650F"];
    if (configDic) {
        configDic[@"buildSettings"][@"CODE_SIGN_STYLE"] = @"Manual";
        //configDic[@"buildSettings"][@"PROVISIONING_PROFILE"] = @"6799ab55-c582-4af2-b641-a45ec5571d94";
        configDic[@"buildSettings"][@"PROVISIONING_PROFILE_SPECIFIER"] = @"ios_dev_notification_provision_6.05";
    }
    
    configDic = [dic[@"objects"] objectForKey:@"3C52E4D41FC1BEBB00AF650F"];
    if (configDic) {
        configDic[@"buildSettings"][@"CODE_SIGN_IDENTITY"] = @"iPhone Distribution";
        configDic[@"buildSettings"][@"CODE_SIGN_IDENTITY[sdk=iphoneos*]"] = @"iPhone Distribution";
        configDic[@"buildSettings"][@"CODE_SIGN_STYLE"] = @"Manual";
        //configDic[@"buildSettings"][@"PROVISIONING_PROFILE"] = @"75165c3f-79a3-47c5-bff7-739a5169ebb4";
        configDic[@"buildSettings"][@"PROVISIONING_PROFILE_SPECIFIER"] = @"ios_adhoc_notification_provision_6.05";
    }
    configDic = [dic[@"objects"] objectForKey:@"73B2D7CC18BC698D00308648"];
    if (configDic) {
        configDic[@"buildSettings"][@"CODE_SIGN_STYLE"] = @"Manual";
        //configDic[@"buildSettings"][@"PROVISIONING_PROFILE"] = @"bfa9de6e-6a2c-414e-a288-8f37d707d87d";
        configDic[@"buildSettings"][@"PROVISIONING_PROFILE_SPECIFIER"] = @"ios_dev_provision_6.05";
        
        configDic[@"buildSettings"][@"ENABLE_BITCODE"] = @"NO";

    }
    configDic = [dic[@"objects"] objectForKey:@"73B2D7CD18BC698D00308648"];
    if (configDic) {
        configDic[@"buildSettings"][@"CODE_SIGN_IDENTITY"] = @"iPhone Distribution";
        configDic[@"buildSettings"][@"CODE_SIGN_IDENTITY[sdk=iphoneos*]"] = @"iPhone Distribution";
        configDic[@"buildSettings"][@"CODE_SIGN_STYLE"] = @"Manual";
        //configDic[@"buildSettings"][@"PROVISIONING_PROFILE"] = @"cf4b2e26-9581-4417-86b8-37b7a0d7f6a9";
        configDic[@"buildSettings"][@"PROVISIONING_PROFILE_SPECIFIER"] = @"ios_adhoc_provision_6.05";
        
        configDic[@"buildSettings"][@"ENABLE_BITCODE"] = @"NO";

    }
    
    configDic = [dic[@"objects"] objectForKey:@"73B2D7CF18BC698D00308648"];
    if (configDic) {
        configDic[@"buildSettings"][@"CODE_SIGN_IDENTITY[sdk=iphoneos*]"] = @"iPhone Developer";
        configDic[@"buildSettings"][@"CODE_SIGN_STYLE"] = @"Manual";
        configDic[@"buildSettings"][@"DEVELOPMENT_TEAM"] = @"F6QSEMKSK2";
        configDic[@"buildSettings"][@"PROVISIONING_PROFILE_SPECIFIER"] = @"";
    }
    configDic = [dic[@"objects"] objectForKey:@"73B2D7D018BC698D00308648"];
    if (configDic) {
        configDic[@"buildSettings"][@"CODE_SIGN_STYLE"] = @"Manual";
        configDic[@"buildSettings"][@"DEVELOPMENT_TEAM"] = @"F6QSEMKSK2";
        configDic[@"buildSettings"][@"PROVISIONING_PROFILE_SPECIFIER"] = @"";
    }
    [dic writeToFile:filePath atomically:YES];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        if (argc >= 2) {
            NSString *filePath = [NSString stringWithUTF8String:argv[1]];
            process(filePath);
            NSLog(@"procecc finished");
        }else {
            NSLog(@"please input the project file path");
        }
    }
    return 0;
}

