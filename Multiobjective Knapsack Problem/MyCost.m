function [z sol]=MyCost(x,model)

    v=model.v;
    w=model.w;
    M=model.M;
    Wmax=model.Wmax;

    V1=sum(v.*x);
    V2=sum(v.*(M-x));
    W1=sum(w.*x);
    W2=sum(w.*(M-x));
    
    S=max(W1/Wmax-1,0);
    
    z=[-V1
        W1];
    
   
    sol.V1=V1;
    sol.V2=V2;
    sol.W1=W1;
    sol.W2=W2;
    sol.S=S;
    
end