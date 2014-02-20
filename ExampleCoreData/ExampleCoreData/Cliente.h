//
//  Cliente.h
//  ExampleCoreData
//
//  Created by Tecla Labs on 19/02/14.
//  Copyright (c) 2014 Tecla Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Cliente : NSManagedObject

@property (nonatomic, retain) NSString * idCodigo;
@property (nonatomic, retain) NSString * apellido;
@property (nonatomic, retain) NSString * nombre;

@end
