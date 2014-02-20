//
//  HomeVC.h
//  ExampleCoreData
//
//  Created by Tecla Labs on 19/02/14.
//  Copyright (c) 2014 Tecla Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeVC : UIViewController
{

    __weak IBOutlet UITextField *txtCodigo;
    __weak IBOutlet UITextField *txtNombre;
    __weak IBOutlet UITextField *txtApellido;
    

}
@property(strong,nonatomic)NSManagedObjectContext *mContext;
-(IBAction)goSave:(id)sender;


@end
