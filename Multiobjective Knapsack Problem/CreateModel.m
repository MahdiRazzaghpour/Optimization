function model=CreateModel()

    w=[31    26    39    37    42    49    33    24    17    42];
    v=[59    66    52    68    79    35    56    40    75    74];
    M=[19    14    17    17    20    14    13    10    14    17];
    
    n=numel(w);
    
    Wmax=1800;
    
    model.n=n;
    model.w=w;
    model.v=v;
    model.M=M;
    model.Wmax=Wmax;
    
end