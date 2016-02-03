//
//  ViewController.m
//  SQLite3Demo
//
//  Created by Erika Bueno on 02/02/16.
//  Copyright © 2016 ErikaBueno. All rights reserved.
//

#import "ViewController.h"
#import "DataController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Create datacontroller and initialize database
    DataController *dataController = [[DataController alloc]init];
    [dataController initDatabase];
    [dataController release];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
