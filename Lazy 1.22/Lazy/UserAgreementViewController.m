//
//  UserAgreementViewController.m
//  Lazy
//  软件许可使用协议
//  Created by yinqijie on 16/3/9.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "UserAgreementViewController.h"
#import "AboutViewController.h"

@interface UserAgreementViewController ()
@property (nonatomic,strong) NSString *userAgreementString;
@property (nonatomic,strong) UITextView *textView;

@end

@implementation UserAgreementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self navigationBarMethod];
    [self userAgreementContentLayoutMethod];
    [self userAgreementContentMethod];
}
-(void)navigationBarMethod{
    //导航栏设置方法
    UILabel *wire=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20)];
    wire.backgroundColor = [UIColor colorWithRed:(143/255.0) green:(45/255.0) blue:(188/255.0) alpha:1];
    [self.view addSubview:wire];
    
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 44)];
    label.text=@"软件许可使用协议";
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
-(void)userAgreementContentLayoutMethod{
    //软件许可使用协议文件布局方法
    self.textView=[[UITextView alloc] init ];
    self.textView.frame=CGRectMake(30, 84, self.view.bounds.size.width-60, self.view.bounds.size.height-114);
    self.textView.text=self.userAgreementString;
    [self.view addSubview:self.textView];
}
-(void)userAgreementContentMethod{
    //软件许可使用协议声明内容方法
    self.userAgreementString=@"1.使用许可协议\n       本《用户使用许可协议》（下称“本《协议》”）是用户与杭州萌资信息科技有限公司(下称“萌资”)之间关于使用”萌知”或相关服务所订立的协议，是用户与萌资关于服务相关事项订立的最终的、完整的且排他的协议。\n       本《协议》将对您使用”萌知”的行为产生法律约束力。因此，请您认真阅读本《协议》中的各条款(未成年人应当在监护人陪同下阅读)，包括免除或者限制萌资责任的免责条款，用户的权利限制条款，约定争议解决方式、司法管辖、法律适用的条款。如果您不能接受本《协议》中的全部条款，请勿安装、复制或使用萌资的相关产品或服务。用户在注册过程中点击“同意”按钮即表示用户完全接受本《协议》项下的全部条款以及随后萌资对本《协议》的不时修订，用户选择访问或使用萌资有关服务，将视为同意接受本《协议》全部条款的约束。\n2.权利声明\n       萌资所提供的服务与服务有关的全部信息、资料、文字、软件、程序、声音、图片、视频、图表（包括相关的软件）的著作权、商标、商业秘密、其他知识产权、所有权或其他权利，均为萌资或其权利人所有，受中华人民共和国相关法律及中华人民共和国加入的国际协定和国际条约保护，除非事先获得萌资或其权利人的合法授权，任何人不得对任何该信息、资料、文字、软件、程序、声音、图片、视频、图表进行修改、拷贝、散布、传送、展示、执行、复制、发行、授权、制作衍生著作、移转或销售。任何自然人，如未遵守上述声明，并损害了萌资的权益，萌资有权利以侵权的名义进行法律维权。萌资有权使用”萌知”用户自行制作或上传的作品并进行商业用途，但应在使用时标明上传者的用户名，并施行一定的补助行为。\n3.用户账号\n       萌资将提供用户注册通道，用户在认可并接受本协议之后，有权选择未被其他用户使用过的字母符号组合作为用户的帐号，并自行设置符合安全要求的密码。用户设置的帐号、密码是用户用以登录萌资产品，接受萌资服务的凭证。\n       萌资账户仅限于在”萌知”上注册用户本人使用，禁止赠与、借用、租用、转让或售卖。如果萌资发现或者有理由怀疑使用者并非帐号初始注册人，则有权在未经通知的情况下，暂停或终止向用户提供服务，并有权注销该帐号，而无需向该帐号使用人承担法律责任，由此带来的包括并不限于用户通讯中断、用户资料和信息等清空等损失由用户自行承担。\n       用户有责任维护个人帐号、密码的安全性与保密性，用户就其帐号及密码项下之一切活动负全部责任，包括用户数据的修改，发表的言论以及其他所有的损失。用户应重视萌资帐号密码保护。用户如发现他人未经许可使用其帐号或发生其他任何安全漏洞问题时立即通知萌资。如果用户在使用萌资服务时违反上述规则而产生任何损失或损害，萌资不承担任何责任。\n       用户帐号在丢失或遗忘密码后，可遵照萌资的申诉途径及时申诉请求找回帐号。用户应提供能增加帐号安全性的个人密码保护资料。用户可以凭初始注册资料及个人密码保护资料填写申诉单向萌资申请找回帐号，萌资的密码找回机制仅负责识别申诉单上所填资料与系统记录资料的正确性，而无法识别申诉人是否系真正帐号有权使用人。对用户因被他人冒名申诉而致的任何损失，萌资不承担任何责任，用户知晓帐号及密码保管责任在于用户，萌资并无义务保证帐号丢失或遗忘密码后用户一定能通过申诉找回帐号。\n4.使用规则\n       用户承诺不得以任何方式利用”萌知”直接或间接从事违反中国法律、以及社会公德的行为，萌资有权对违反上述承诺的内容予以删除。\n       用户不得利用萌资服务制作、上载、复制、发布、传播或者转载如下内容：\n       反对宪法所确定的基本原则的；\n       危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n       损害国家荣誉和利益的；\n       煽动民族仇恨、民族歧视，破坏民族团结的；\n       破坏国家宗教政策，宣扬邪教和封建迷信的；\n       散布谣言，扰乱社会秩序，破坏社会稳定的；\n       散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n       侮辱或者诽谤他人，侵害他人合法权益的；\n       含有法律、行政法规禁止的其他内容的信息。\n       萌资有权对用户使用”萌知”的情况进行审查和监督，如用户在使用”萌知”时违反任何上述规定，萌资或其权利人有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户张贴的内容、暂停或终止用户使用萌资的权利）以减轻用户不当行为造成的影响。\n       在使用萌资服务可能存在有来自任何他人的包括威胁性的、诽谤性的、令人反感的或非法的内容或行为或对他人权利的侵犯(包括知识产权)的匿名或冒名的信息的风险，用户须承担以上风险，萌资对服务不作担保，不论是明确的或隐含的，包括所有有关信息真实性、适当性、适于某一特定用途、所有权和非侵权性的默示担保和条件，对因此导致任何因用户不正当或非法使用服务产生的直接、间接、偶然、特殊及后续的损害，萌资不承担任何责任。\n       用户应保证，在使用萌资产品服务时上传的文字、图片、视频、软件以及表演等的信息不侵犯任何第三方知识产权，包括但不限于商标权、著作权等。若用户在使用萌资产品服务时上传的文字、图片、视频、软件以及表演等的信息中侵犯第三方知识产权，萌资有权移除该侵权产品，并对此不负任何责任。用户应当负责处理前述第三方的权利主张，承担由此产生的全部费用，包括但不限于侵权赔偿、律师费及其他合理费用，并保证萌资不会因此而遭受任何损失。\n5.隐私\n       保护用户（特别是未成年人）的隐私是萌资的一项基本政策，因此，若父母（监护人）希望未成年人（尤其是十岁以下子女）得以使用本服务，必须以父母（监护人）名义申请注册，在接受本服务时，应以法定监护人身份加以判断本服务是否符合于未成年人。\n       萌资承诺在未获得用户的许可前，不会公开用户注册资料中的真实姓名、身份证号码、家庭住址、通讯地址、邮政编码、电子邮箱、密码、密码保护提示问题及答案等。但如果出现下列情况将不在此承诺范围内：\n       用户允许萌资披露这些个人资料；\n       为维护社会公众的利益而披露的。\n       有关法律法规或行政规章要求萌资披露用户的个人资料；\n       司法机关或行政机关基于法定程序要求萌资披露用户的个人资料；\n       为维护萌资的合法权益而向有关机关披露的；\n       为保护萌资的知识产权和其他财产权益，需要披露用户的个人资料；\n       在紧急情况下为保护其他用户和社会大众的人身安全，需要披露用户的个人资料；\n       本公司合理怀疑有危害国家安全事情发生时，本公司主动将相关资料供公安机关调查处理；\n       萌资可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与萌资同等的保护用户隐私的责任，则萌资可将用户的个人信息等提供给该第三方。 在不透露用户个人隐私资料的前提下，萌资有权对整个用户数据库进行技术分析并对已进行分析、整理后的用户数据库进行商业上的利用（包括但不限于公布、分析或以其它方式使用用户访问量、访问时段、用户偏好等用户数据信息）。\n       尽管萌资对用户的隐私权保护做了极大的努力，但是仍然不能保证现有的安全技术措施使用户的技术信息等不受任何形式的损失。故用户在此同意并确认，任何由于计算机系统问题、黑客攻击、计算机病毒侵入或发作、因政府管制而造成的暂时性关闭等影响网络正常浏览的不可抗力而造成的用户个人信息泄露、丢失、被盗用或被篡改等，萌资均无需承担责任。\n6.免责声明\n       萌资不能对用户发表的回答或评论的正确性进行保证。\n       用户在萌资发表的内容仅表明其个人的立场和观点，并不代表萌资的立场或观点。作为内容的发表者，需自行对所发表内容负责，因所发表内容引发的一切纠纷，由该内容的发表者承担全部法律及连带责任。萌资不承担任何法律及连带责任。\n       萌资不保证网络服务一定能满足用户的要求，也不保证网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作保证。对于因不可抗力或萌资不能控制的原因造成的网络服务中断或其它缺陷，萌资不承担任何责任，但将尽力减少因此而给用户造成的损失和影响。\n7.协议修改\n       根据互联网的发展和有关法律、法规及规范性文件的变化，或者因业务发展需要，萌资有权对本协议的条款作出修改或变更，一旦本协议的内容发生变动，萌资将会直接在萌资网站上公布修改之后的协议内容，该公布行为视为萌资已经通知用户修改内容。萌资也可采用电子邮件或私信的传送方式，提示用户协议条款的修改、服务变更、或其它重要事项。\n       如果不同意萌资对本协议相关条款所做的修改，用户有权并应当停止使用”萌知”。如果用户继续使用”萌知”，则视为用户接受萌资对本协议相关条款所做的修改。";
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
