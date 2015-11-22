//
//  main.m
//  Conor Sweeney- Twin Primes Test
//
//  Created by Conor Sweeney on 10/30/15.
//  Copyright © 2015 Conor Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>

//Function to find first n twin primes
void twinPrimes(int n){
    
    //find prime numbers
    
    //Create a mutable array to store prime numbers
    //initiate the array with 3 the first prime number that is not two
    NSMutableArray *primeNumbers= [[NSMutableArray alloc]initWithObjects:@3, nil];
    //NSMutableArray *twinPrimesNumberArray = [[NSMutableArray alloc]init];
    NSInteger tempNumber = 3;
    //NSInteger primeNumberCount = 1;
    NSInteger twinPrimeCount = 0;
    
    //loop to check odd numbers to see if they are prime starting at 5
    //count by two to ignore all even numbers
    for(long i = 5; twinPrimeCount < n; i = i+2){
        
        //array size
        long y = [primeNumbers count];
        
        //loop to search array
        for(long x = 0; x < y;){
            
            //variable for current value in array
            long m = [[primeNumbers objectAtIndex:x] longValue];
        
            //if all numbers are checked and are not divisible by any primes then it is added to the list
            if(x == (y-1))
            {
                //Add prime numbers to prime number array
                [primeNumbers addObject:[NSNumber numberWithLong:i]];
                //Prime number counter
                //primeNumberCount = primeNumberCount + 1;
                //Check to see if prime number is a twin and print it if it is
                if (i == tempNumber + 2) {
                    twinPrimeCount = twinPrimeCount + 1;
                    NSLog(@"\n%ld. %ld - %ld\n",twinPrimeCount,tempNumber,i);
                    
                }
                //Change temp number to the new prime number
                tempNumber = i;
                break;
            }
            //checks to see if the current odd number is divisible by a the current value at the array index
            else if(i % m != 0){
                x++;
            }
            else
                break;
        }
    }
    //NSLog(@"%@",primeNumbers);
    
    //Loop to find prime twins
    //for (long x = 0;twinPrimeCount<n; x++) {
    //    long y = x+1;
    //    long m = [(NSNumber *)[primeNumbers objectAtIndex:x] longValue];
    //    long n = [(NSNumber *)[primeNumbers objectAtIndex:y] longValue];
    //    if (m + 2 == n) {
    //        NSLog(@"\n\n%ld. Twin Primes: %ld - %ld\n\n",(long)twinPrimeCount+1,m,n);
    //        twinPrimeCount = twinPrimeCount + 1;
    //    }
    //}
}


int main(int argc, const char * argv[]) {
    twinPrimes(10);
    
    return 0;
}
