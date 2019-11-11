//
//  UserInput.h
//  Self Portrait
//
//  Created by Rodney Sampson on 8/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString * getStringFromUser(int stringLength, NSString * prompt);

NSInteger getNumberFromUser(int maxValidChoice, NSString * prompt);
