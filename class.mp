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
   Parent.nw = (0,0);
   TB.n = Parent.s + (0, -20);
   
   Class.Button("ButtonElemenet")
     ()
     ();  
    Button.n = TB.s + (-40, -20);
    Class.TextField("TextField")
     ()
     ();   
    TextField.n = TB.s + (+40, -20);    
    
    drawObjects(Parent,TB,Button,TextField);
    
    link(inheritance)(TB.n -- Parent.s);
    link(inheritance)(Button.n -- TB.s +(-40,0));
    link(inheritance)(TextField.n -- TB.s + (40,0));
endfig;
end