//
//  Medications.h
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Medications : NSObject

@property (nonatomic,strong)NSString *name;

@property (nonatomic, strong)NSString *dosage;

@property (nonatomic, assign) BOOL done;

-(id) initWithName: (NSString *) name
            dosage: (NSString*)dosage
              done:(BOOL) done;

@end
