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
            AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
            sharedMyManager.managedObjectContext = delegate.managedObjectContext;
            
        }
    }
    return sharedMyManager;
}

-(BOOL)saveClientInStoreLocal:(Cliente *)cliente
{
    
    Cliente *mCliente = [NSEntityDescription insertNewObjectForEntityForName:@"Cliente"
                                                      inManagedObjectContext:self.managedObjectContext];
    mCliente.idCodigo = cliente.idCodigo;
    mCliente.nombre = cliente.nombre;
    mCliente.apellido = cliente.apellido;
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    //guardando datos
    [delegate saveContext];
    
    
    return YES;
}
-(NSArray *)getAllClients
{
    NSArray *fetchedRecords;
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    //Setting Entity to be Queried
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Cliente"
                                              inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    NSError* error;
    
    // Query on managedObjectContext With Generated fetchRequest
    fetchedRecords = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    // Returning Fetched Records
    NSLog(@"cantidad de registros %lu ,",fetchedRecords.count);
    if (fetchedRecords.count >0) {
        for (Cliente *cliente in fetchedRecords) {
            NSLog(@"Nombre %@" ,cliente.nombre);
        }
    }
    return  fetchedRecords;
}


-(NSArray *)getClientByName:(NSString *)name{
    NSArray *arrayClients;
    
    return arrayClients;
}


-(Cliente *)getClientById:(NSString *)codigo
{
    Cliente *client;
    
    
    
    return client;

}

@end
