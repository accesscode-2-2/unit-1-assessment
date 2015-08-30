//
//  AccessCodeDirectoryVC.m
//  Unit-1-Assessment
//
//  Created by Krishna Picart on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "AccessCodeDirectoryVC.h"


@implementation AccessCodeDirectoryVC


//- (void)viewDidLoad {
//    
   @synthesize accessCodeDirectory;
//    
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    self.accessCodeDirectory = [[NSMutableArray alloc] init];
//    

    -(void)viewDidLoad{
        [super viewDidLoad]; accessCodeDirectory = [[NSMutableArray alloc]initWithObjects:
                       @"arturlan",
                       @"ayunavogel",
                       @"bereketghebremedhin",
                       @"brianblanco",
                       @"charleshkang",
                       @"chrisdavid",
                       @"christelladolmo",
                       @"christianmaldonado",
                       @"danieldistant",
                       @"dereknetto",
                       @"dianaelezaj",
                       @"elbercarneiro",
                       @"ericsanchez",
                       @"ericsze",
                       @"feliciaweathers",
                       @"hennaahmed",
                       @"jackiemeggesto",
                       @"jamaalsedayao",
                       @"jasonwang",
                       @"jovannyespinal",
                       @"justinegartner",
                       @"kairavillanueva",
                       @"kaishajones",
                       @"krishnapicart",
                       @"laurencaponong",
                       @"mesfinbekelemekonnen",
                       @"nataliaestrella",
                       @"shenayoshida",
                       @"umarmahmud",
                       @"varindrahart",
                       @"xiulanshi",
                       @"zoufishanmehdi",
                       nil];
        
        _thumbnails  = [ NSArray arrayWithObjects:
                        
                        @"arturlan2x.png",
                        @"ayunavogel2x.png",
                        @"bereketghebremedhin2x.png",
                        @"brianblanco2x.png",
                        @"charleshkang2x.png",
                        @"chrisdavid2x.png",
                        @"christelladolmo2x.png",
                        @"christianmaldonado2x.png",
                        @"danieldistant2x.png",
                        @"dereknetto2x.png",
                        @"dianaelezaj2x.png",
                        @"elbercarneiro2x.png",
                        @"ericsanchez2x.png",
                        @"ericsze2x.png",
                        @"feliciaweathers2x.png",
                        @"hennaahmed2x.png",
                        @"jackiemeggesto2x.png",
                        @"jamaalsedayao2x.png",
                        @"jasonwang2x.png",
                        @"jovannyespinal2x.png",
                        @"justinegartner2x.png",
                        @"kairavillanueva2x.png",
                        @"kaishajones2x.png",
                        @"krishnapicart2x.png",
                        @"laurencaponong2x.png",
                        @"mesfinbekelemekonnen2x.png",
                        @"nataliaestrella2x.png",
                        @"shenayoshida2x.png",
                        @"umarmahmud2x.png",
                        @"varindrahart2x.png",
                        @"xiulanshi2x.png",
                        @"zoufishanmehdi2x.png",
                        nil];
        
    }

    -(id) initWithStyle:(UITableViewStyle)style{
        
        self = [super initWithStyle:style];
        
        if (self){
            
        } return self;
        
    }
        - (void)didReceiveMemoryWarning {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }
    
    
    -(void)viewDidAppear:(BOOL)animated
    {
        //    [super viewDidAppear:YES];
        //    [self.tableView reloadData];
    }
    
#pragma mark - Table view data source
    
    
    - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
        return 1;
    }
    
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        
        return accessCodeDirectory.count;
        
    }

    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        
        static NSString *cellIdentifier =@"developersID22";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell ==nil){
            
            cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:cellIdentifier];
        }
        
        
        // Configure the cell...
        cell.textLabel.text = [accessCodeDirectory objectAtIndex:indexPath.row];
        return cell;
        
    }
    
    @end