prologues := 2;
input metauml;

beginfig(1);
   Class.Parent("AbstractHasTestBenchCommandExecutor")
    ()
    ("+$(Class<T>):void",
     "+$$(Class<T>):void");
   
   Class.TB("TestbenchElemenet")
     ()
     ();
  % Parent.nw = (0,0);
   %TB.n = Parent.s + (0, -20);
   
   Class.TBTest("TestBenchTestCase")
    ()
    
    ("SearchContext():SearchContext",
    "findElement(By):WebElement",
     "+findElements(By):List<WebElement>");
   
   
   Class.Button("ButtonElemenet")
     ()
     ();  
    %Button.n = TB.s + (-40, -20);
    Class.TextField("TextField")
     ()
     ();   
    %TextField.n = TB.s + (+40, -20);    
    
    
    topToBottom(20)(Parent,TB,Button);
    leftToRight(20)(TextField,Button);
    TBTest.nw = below(Parent.se, 40);
     drawObjects(Parent,TB,TBTest,Button,TextField);

%   clink(inheritance)(TB, Parent);
%   clink(inheritance)(TBTest, Parent);

%   clink(inheritance)(TextField,TB);
%   clink(inheritance)(Button,TB);

endfig;
end