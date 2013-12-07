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

#pragma mark IS-prac4

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

- (IBAction)prac4_6:(id)sender
{
    NSLog(@"%@",ISJUKU);
    NSLog(@"%d",func(2));
    NSLog(@"%d",func(3));
    NSLog(@"%d",func(func(4)));
}

- (IBAction)prac4_7:(id)sender
{
    NSLog(@"%s",__FUNCTION__);
    NSLog(@"%d",__LINE__);
    NSLog(@"%s",__FILE__);
    
    NSString *msg=[NSString stringWithFormat:@"Function=%s, Line=%d, File=%s",__FUNCTION__,__LINE__,__FILE__];
    UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle:@"演習４−７" // アラートのタイトル
                               message:msg // アラートのメッセージ
                              delegate:self // 結果を受け取るインスタンス
                     cancelButtonTitle:@"OK" // ボタンに記載される文字列
                     otherButtonTitles:nil];
    [alert show];
}

- (IBAction)prac4_9:(id)sender
{
    for (int score=0; score<=100; score+=10) {
        [self hantei:score];
    }
}

- (void)hantei:(int)score
{
    if (score < 40) {
        NSLog(@"%d C",score);
    } else if (score < 60) {
        NSLog(@"%d B",score);
    } else if (score < 80) {
        NSLog(@"%d A",score);
    } else{
        NSLog(@"%d @",score);
    }
}

- (IBAction)prac4_10:(id)sender
{
    [self sig:-1];
    [self sig:0];
    [self sig:1];
    [self sig:10];
    [self sig:100];
}

- (int)sig:(int)n
{
    int s=0;
    for (int i=1; i<=n ; i++) {
        s += i;
    }
    NSLog(@"%d %d",n,s);
    return s;
}

@end
