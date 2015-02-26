//
//  ViewController.m
//  Quiz
//
//  Created by Jeff Wrathall on 2015-02-20.
//
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation ViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    //call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        //new up arrays
        self.questions = @[@"What is the square root of 64?",
                           @"How big are my feet?",
                           @"What is my favorite food?"];
        
        self.answers = @[@"8",
                         @"Size large",
                         @"Any pasta will do"];
    }
    return self;
}

-(IBAction)showQuestion:(id)sender{

    self.currentQuestionIndex++;
    
    if(self.currentQuestionIndex == [self.questions count]){
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"???";
}

-(IBAction)showAnswer:(id)sender{

    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
