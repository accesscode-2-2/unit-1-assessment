//
//  NamesTableViewController.m
//  Unit-1-Assessment
//
//  Created by Natalia Estrella on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "NamesTableViewController.h"
#import "Student.h"
#import "NamesDetailViewController.h"



@interface NamesTableViewController ()

@end

@implementation NamesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Students";

    
    Student *arturlan = [[Student alloc] init];
    
    arturlan.name = @"Artur Lan";
    arturlan.photoName = @"arturlan";
    
    Student *ayunavogel = [[Student alloc] init];
    ayunavogel.name = @"Ayuna Vogel";
    ayunavogel.photoName = @"ayunavogel";
    
    Student *bereketghebremedhin = [[Student alloc] init];
    bereketghebremedhin.name = @"Bereket Ghebremedhin";
    bereketghebremedhin.photoName = @"bereketghebremedhin";
    
    Student *brianblanco = [[Student alloc] init];
    brianblanco.name = @"Brian Blanco";
    brianblanco.photoName = @"brianblanco";
    
    Student *charleshkang = [[Student alloc] init];
    charleshkang.name = @"Charles H. Kang";
    charleshkang.photoName = @"charleshkang";
    
    Student *chrisdavid = [[Student alloc] init];
    chrisdavid.name = @"Chris David";
    chrisdavid.photoName = @"chrisdavid";
    
    Student *christelladolmo = [[Student alloc] init];
    christelladolmo.name = @"Christell Adolmo ";
    christelladolmo.photoName = @"christelladolmo";
    
    Student *christianmaldonado = [[Student alloc] init];
    christianmaldonado.name = @"Christian Maldonado ";
    christianmaldonado.photoName = @"christianmaldonado";
    
    Student *danieldistant = [[Student alloc] init];
    danieldistant.name = @"Daniel Distant";
    danieldistant.photoName = @"danieldistant";
    
    Student *dereknetto = [[Student alloc] init];
    dereknetto.name = @"Derek Netto";
    dereknetto.photoName = @"dereknetto";
    
    Student *dianaelezaj = [[Student alloc] init];
    dianaelezaj.name = @"Diana Elezaj ";
    dianaelezaj.photoName = @"dianaelezaj";
    
    Student *elbercarneiro = [[Student alloc] init];
    elbercarneiro.name = @"Elber Carneiro";
    elbercarneiro.photoName = @"arturlan";
    
    Student *ericsanchez = [[Student alloc] init];
    ericsanchez.name = @"Eric Sanchez";
    ericsanchez.photoName = @"ericsanchez";
    
    Student *ericsze = [[Student alloc] init];
    ericsze.name = @"Eric Sze";
    ericsze.photoName = @"ericsze";
    
    Student *feliciaweathers = [[Student alloc] init];
    feliciaweathers.name = @"Felicia Weathers";
    feliciaweathers.photoName = @"feliciaweathers";
    
    Student *hennaahmed = [[Student alloc] init];
    hennaahmed.name = @"Henna Ahmed";
    hennaahmed.photoName = @"hennaahmed";
    
    Student *jackiemeggesto = [[Student alloc] init];
    jackiemeggesto.name = @"Jackie Meggesto";
    jackiemeggesto.photoName = @"jackiemeggesto";
    
    Student *jamaalsedayao = [[Student alloc] init];
    jamaalsedayao.name = @"Jamaal Sedayao";
    jamaalsedayao.photoName = @"jamaalsedayao";
    
    Student *jasonwang = [[Student alloc] init];
    jasonwang.name = @"Jason Wang";
    jasonwang.photoName = @"jasonwang";
    
    Student *jovannyespinal = [[Student alloc] init];
    jovannyespinal.name = @"Jovanny Espinal";
    jovannyespinal.photoName = @"jovannyespinal";

    Student *justinegartner = [[Student alloc] init];
    justinegartner.name = @"Justine Gartner";
    justinegartner.photoName = @"justinegartner";
        
    Student *kairavillanueva = [[Student alloc] init];
    kairavillanueva.name = @"Kaira Villanueva";
    kairavillanueva.photoName = @"kairavillanueva";
    
    Student *kaishajones = [[Student alloc] init];
    kaishajones.name = @"Kaisha Jones";
    kaishajones.photoName = @"kaishajones";
   
    Student *krishnapicart = [[Student alloc] init];
    krishnapicart.name = @"Krishna Picart";
    krishnapicart.photoName = @"krishnapicart";
    
    Student *laurencaponong = [[Student alloc] init];
    laurencaponong.name = @"Lauren Caponong";
    laurencaponong.photoName = @"laurencaponong";
    
    Student *mesfinbekelemekonnen = [[Student alloc] init];
    mesfinbekelemekonnen.name = @"Mesfin Bekelemekonnen";
    mesfinbekelemekonnen.photoName = @"mesfinbekelemekonnen";
    
    Student *shenayoshida = [[Student alloc] init];
    shenayoshida.name = @"shenayoshida";
    shenayoshida.photoName = @"shenayoshida";
    
    Student *umarmahmud = [[Student alloc] init];
    umarmahmud.name = @"Umar Mahmud";
    umarmahmud.photoName = @"umarmahmud";
    
    Student *varindrahart = [[Student alloc] init];
    varindrahart.name = @"Varindra Hart";
    varindrahart.photoName = @"varindrahart";
    
    Student *xiulanshi = [[Student alloc] init];
    xiulanshi.name = @"Xiulan Shi";
    xiulanshi.photoName = @"xiulanshi";
    
    Student *zoufishanmehdi = [[Student alloc] init];
    zoufishanmehdi.name = @"Zoufishan Mehdi";
    zoufishanmehdi.photoName = @"zoufishanmehdi";
    

    //Array of Objects
self.students = @[arturlan, ayunavogel, bereketghebremedhin, brianblanco,charleshkang, chrisdavid, chrisdavid, christelladolmo, christianmaldonado, danieldistant, dereknetto, dianaelezaj,elbercarneiro,ericsanchez, ericsze, feliciaweathers, hennaahmed, jackiemeggesto, jamaalsedayao, jasonwang, jovannyespinal, justinegartner, kairavillanueva, kaishajones, krishnapicart, laurencaponong,mesfinbekelemekonnen, shenayoshida, umarmahmud, varindrahart, xiulanshi, zoufishanmehdi];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.students.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    Student *students = self.students[indexPath.row];
    cell.textLabel.text = students.name;
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    Student *students = self.students[selectedIndexPath.row];
    
    NamesDetailViewController *detailVC = segue.destinationViewController;
    
    
    detailVC.studentFile = students;
    
    
}

@end
