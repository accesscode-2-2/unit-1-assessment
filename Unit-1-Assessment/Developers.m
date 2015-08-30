//
//  Developers.m
//  Unit-1-Assessment
//
//  Created by Christella on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Developers.h"

@implementation Developers

- (void)initializeDev {
    NSArray *accessCoders = @[
                              @"LaurenCaponong",
                              @"ArturLan",
                              @"MesfinBekeleMekonnen",
                              @"JovannyEspinal",
                              @"NataliaEstrella",
                              @"JustineGartner",
                              @"KaishaJones",
                              @"ShenaYoshida",
                              @"KrishnaPicart",
                              @"UmarMahmud",
                              @"KairaVillanueva",
                              @"ChristellaDolmo",
                              @"ChristianMaldonado",
                              @"ElberCarneiro",
                              @"DanielDistant",
                              @"EricSanchez",
                              @"BereketGhebremedhin",
                              @"AyunaVogel",
                              @"DerekNetto",
                              @"BrianBlanco",
                              @"CharlesHKang",
                              @"DianaElezaj",
                              @"ChrisDavid",
                              @"FeliciaWeathers",
                              @"EricSze",
                              @"HennaAhmed",
                              @"JackieMeggesto",
                              @"JamaalSedayao",
                              @"JasonWang",
                              @"VarindraHart",
                              @"XiulanShi",
                              @"ZoufishanMehdi"

                  ];
    
    self.Developers = [accessCoders sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
}


@end
