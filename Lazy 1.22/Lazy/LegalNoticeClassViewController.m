//
//  LegalNoticeClassViewController.m
//  Lazy
//  免责声明文件
//  Created by yinqijie on 16/3/9.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "LegalNoticeClassViewController.h"
#import "AboutViewController.h"

@interface LegalNoticeClassViewController ()

@property (nonatomic,strong) NSString *legalNoticeString;
@property (nonatomic,strong) UITextView *textView;

@end

@implementation LegalNoticeClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self navigationBarMethod];
    [self legalNoticeContentMethod];
    [self legalNoticeContentLayoutMethod];
}
-(void)navigationBarMethod{
    //导航栏设置方法
    UILabel *wire=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20)];
    wire.backgroundColor = [UIColor colorWithRed:(143/255.0) green:(45/255.0) blue:(188/255.0) alpha:1];
    [self.view addSubview:wire];
    
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 44)];
    label.text=@"免责声明";
    label.textAlignment=NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:20];
    label.textColor=[UIColor whiteColor];
    label.backgroundColor = [UIColor colorWithRed:(143/255.0) green:(45/255.0) blue:(188/255.0) alpha:1];
    [self.view addSubview:label];
    
    UIButton *back=[[UIButton alloc] initWithFrame:CGRectMake(10, 32, 20, 20)];
    [back setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(clicBackButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:back];
    
}
-(void)clicBackButton{
    //导航栏返回
    AboutViewController *nextVC=[[AboutViewController alloc] init];
    [self presentViewController:nextVC animated:YES completion:nil];
}
-(void)legalNoticeContentLayoutMethod{
    //免责声明文件布局方法
    self.textView=[[UITextView alloc] init ];
    self.textView.frame=CGRectMake(30, 84, self.view.bounds.size.width-60, self.view.bounds.size.height-114);
    self.textView.text=self.legalNoticeString;
    self.textView.editable=NO;
    [self.view addSubview:self.textView];
}
-(void)legalNoticeContentMethod{
    //免责文件声明内容方法
    self.legalNoticeString=@"一、免责声明  \n  1.本应用由君爵信息科技开发或所有。君爵在此声明，用户通过本软件参与的商业活动，与Apple Inc.无关，Apple不承担该程序的任何责任。 \n 2.   懒猪社区手机客户端的品牌合作商，如Apple，AppleStore，非懒猪社区手机客户端的赞助商，也未拥有该客户端的知识产权或其他任何权益。因懒猪社区手机客户端侵犯第三方知识产权的，由懒猪社区承担相应的法律责任。 \n  懒猪社区有权但无义，改善或更正本手机客户端的任何错误或缺陷。    \n3.   用户通过懒猪社区手机客户端及其中的任何连接、下载获得的一切信息、内容或广告，懒猪社区不声明或担保其正确性或可靠性；并且对用户经本手机客户端上的展示、内容、广告而购买、取得的任何产品、或信息，懒猪社区不负保证责任。用户自行承担使用本软件的风险。\n二、软件使用协议    \n  本协议是用户（自然人、法人或社会团体）与杭州君爵信息科技有限公司之间关于“懒猪社区”软件产品的法律协议。一旦安装、复制或以其他方式使用本软件产品，即表示同意接受协议各项条件的约束。如果用户不同意协议的条件，请勿要使用本软件产品。\n三、软件保护条款    \n  1、本软件产品之著作权及其它知识产权等相关权利或利益（包括但不限于现已取得或未来可取得之著作权、专利权、商标权、营业秘密等）皆为杭州君爵信息科技有限公司所有。本软件产品受中华人民共和国版权法及国际版权条约和其他知识产权法及条约的保护。用户仅获得本软件产品的非排他性使用权。    \n  2、用户不得：删除本软件及其他副本上一切关于版权的信息；对本软件进行反向工程，如反汇编、反编译等；   \n  3、杭州君爵信息科技有限有限公司保留对软件版本进行升级，对功能、内容、结构、界面、运行方式等进行修改或自动更新的权利。  \n  4、为了更好地服务于用户，或为了向用户提供具有个性的信息内容的需要，本软件产品可能会收集、传播某些信息，但杭州君爵信息科技有限公司承诺不向未经授权的第三方提供此类信息，以保护用户隐私。    \n  5、使用本软件产品由用户自己承担风险，在适用法律允许的最大范围内,杭州君爵信息科技有限公司在任何情况下不就因使用或不能使用本软件产品所发生的特殊的、意外的、非直接或间接的损失承担赔偿责任。即使已事先被告知该损害发生的可能性。    \n  6、杭州君爵信息科技有限公司定义的信息内容包括：文字、软件、声音；本公司为用户提供的商业信息，所有这些内容受版权、商标权、和其它知识产权和所有权法律的保护。所以，用户只能在本公司授权下才能使用这些内容，而不能擅自复制、修改、编撰这些内容、或创造与内容有关的衍生产品。   \n  7、如果您未遵守本协议的任何一项条款，杭州君爵信息科技有限公司有权立即终止本协议，并保留通过法律手段追究责任。     \n      杭州君爵信息科技有限公司具有对以上各项条款内容的最终解释权和修改权。  \n      如用户对杭州君爵信息科技有限公司的解释或修改有异议，应当立即停止使用本软件产品。用户继续使用本软件产品的行为将被视为对杭州君爵信息科技有限公司的解释或修改的接受。   \n      因本协议所发生的纠纷，双方同意按照中华人民共和国法律，由杭州君爵信息科技有限公司所在地的有管辖权的法院管辖。  \n      杭州君爵信息科技有限公司";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
