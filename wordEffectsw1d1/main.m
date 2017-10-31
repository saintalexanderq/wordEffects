//
//  main.m
//  wordEffectsw1d1
//
//  Created by Alex Quigley on 2017-10-30.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
        char inputChars[255];
        
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        printf("Your string is %s\n", inputChars);
        NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        
        while (YES) {
            NSLog(@"Choose a respective number for what you would like to do with your string:\n 1) Uppercase \n 2) Lowercase \n 3) Numberize \n 4) Canadianize \n 5) Respond \n 6) De-Space \n 7) Word Count");
            int optionNum = 0;
            scanf("%d", &optionNum);
            
            if (optionNum == 1) {
             // UPPERCASE
                NSLog(@"Uppercase string: %@", [inputString uppercaseString]);
                
            } else if (optionNum == 2){
                // LOWERCASE
                NSLog(@"Lowercase string: %@", [inputString lowercaseString]);
                
            } else if (optionNum == 3){
                // NUMBERIZE
                if ([inputString rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"0123456789"]].location != NSNotFound) {
                    
                    int inputInt = [inputString intValue];
                    NSLog(@"Conversion of NSString '%d' to Int was successful", inputInt);
                    
                    // If string is not a number do this:
                } else {
                    NSLog(@"Input '%@' is not a number, unable to convert to an int", inputString);
                }
                
            } else if (optionNum == 4){
                // CANDIANIZE
                NSString *eh = @", eh?";
                NSLog(@"Canadianize: %@", [inputString stringByAppendingString:eh]);
                
            } else if (optionNum == 5){
                // RESPOND
                if ([inputString hasSuffix:@"?"]) {
                    NSLog(@"I don't know");
                } else if ([inputString hasSuffix:@"!"])
                    NSLog(@"Whoa, calm down!");
                
            } else if (optionNum == 6){
                // DE-SPACE
                NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                
            } else if (optionNum == 7) {
                // WORD COUNT
                NSString *wordCount = inputString;
                NSArray *count = [wordCount componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" \n"]];
                NSLog(@"Word count of your string is %lu", (unsigned long)[count count]);
            }
            else {
                NSLog(@"Please make sure your input is a number");
            }
    }
    return 0;
    }
