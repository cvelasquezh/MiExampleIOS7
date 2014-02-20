//
//  ServiceYambal.h
//  ExampleCoreData
//
//  Created by Tecla Labs on 20/02/14.
//  Copyright (c) 2014 Tecla Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cliente.h"

@interface ServiceYambal : NSObject

@property(nonatomic,retain) NSManagedObjectContext *managedObjectContext;




-(BOOL)saveClientInStoreLocal:(Cliente *)cliente;
-(NSArray *)getAllClients;
-(NSArray *)getClientByName:(NSString *)name;
-(Cliente *)getClientById:(NSString *)codigo;
@end
