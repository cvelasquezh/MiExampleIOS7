//
//  HomeVC.m
//  ExampleCoreData
//
//  Created by Tecla Labs on 19/02/14.
//  Copyright (c) 2014 Tecla Labs. All rights reserved.
//

#import "HomeVC.h"
#import "AppDelegate.h"
#import "Cliente.h"
#import "ServiceYambal.h"
@interface HomeVC ()

@end

@implementation HomeVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate *delegate = [[UIApplication sharedApplication]delegate];
    self.mContext = delegate.managedObjectContext;
    
    
    
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goSave:(id)sender{
    
  //load dataos
    NSString *nombre = txtNombre.text;
    NSString *apellidos = txtApellido.text;
    NSString *codigo = txtCodigo.text;
    
    if ([nombre isEqualToString:@""] || [apellidos isEqualToString:@""] || [codigo isEqualToString:@""]) {
        UIAlertView *alertview = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Debe llenar todos los campos" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alertview show];
        return;
    }
    Cliente *cliente = [Cliente new];
    [cliente setNombre:nombre];
    [cliente setApellido:apellidos];
    [cliente setIdCodigo:codigo];

    [ServiceYambal saveClientInStoreLocal:cliente];
   

}



@end
