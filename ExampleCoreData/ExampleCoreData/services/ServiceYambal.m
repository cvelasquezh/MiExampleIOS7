//
//  ServiceYambal.m
//  ExampleCoreData
//
//  Created by Tecla Labs on 20/02/14.
//  Copyright (c) 2014 Tecla Labs. All rights reserved.
//

#import "ServiceYambal.h"
#import "Cliente.h"
#import "AppDelegate.h"
@implementation ServiceYambal
static ServiceYambal *sharedMyManager = nil;

+(ServiceYambal *)getInstance
{
    @synchronized(self)
    {
        if(sharedMyManager==nil)
        {
            sharedMyManager= [ServiceYambal new];
        }
    }
    return sharedMyManager;
}

+(BOOL)saveClientInStoreLocal:(Cliente *)cliente
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.managedObjectContext;
    
    return NO;
}
+(NSArray *)getAllClients
{
    NSArray *arrayClients;
    
    return  arrayClients;
}
+(NSArray *)getClientByName:(NSString *)name{
    NSArray *arrayClients;
    
    return arrayClients;
}
+(Cliente *)getClientById:(NSString *)codigo
{
    Cliente *client;
    
    
    
    return client;

}

@end
