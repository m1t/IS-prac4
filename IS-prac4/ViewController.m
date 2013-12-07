//
//  ViewController.m
//  IS-prac4
//
//  Created by Chida Mitsuhiro on 13/12/07.
//  Copyright (c) 2013年 Chida Mitsuhiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)prac4_2:(id)sender
{
    NSLog(@"clicked!");
}

- (IBAction)prac4_3:(id)sender
{
    int a=1, b=2;
    NSLog(@"a=%d, b=%d",a,b);
    NSLog(@"a+b=%d",a+b);
    NSLog(@"a-b=%d",a-b);
    NSLog(@"a*b=%d",a*b);
    NSLog(@"a/b=%d",a/b);
}

- (IBAction)prac4_4:(id)sender
{
    int a=12, b=3;
    NSLog(@"%d",a%b);
    a++; --b;
    NSLog(@"%d",a%b);
    a+=b;
    NSLog(@"%d",a);
    b*=b;
    NSLog(@"%d",b);
}

- (IBAction)prac4_5:(id)sender
{
    int a=5, b=6;
    float c, d;
    c=a/b;
    NSLog(@"%.1f",c);
    d=(float)a/b;
    NSLog(@"%.1f",d);
    NSLog(@"%d",(d<1.0f));
    NSLog(@"%d",(d>1.0f));
    NSLog(@"%d",'A');
    NSLog(@"%X",'A');
    NSLog(@"%x",'0');
    NSLog(@"%X",'1');
}

@end
