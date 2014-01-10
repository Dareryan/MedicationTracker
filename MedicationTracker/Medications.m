//
//  Medications.m
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "Medications.h"

@implementation Medications

@synthesize name = _name;

@synthesize dosage = _dosage;

@synthesize alarmed = _alarmed;

-(id)initWithName:(NSString *)name
           dosage:(NSString *)dosage
             done:(BOOL)done {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.dosage = dosage;
        self.alarmed = done;
    }
    return self;
}

@end
