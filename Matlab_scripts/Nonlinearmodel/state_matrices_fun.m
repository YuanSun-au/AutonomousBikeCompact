function [Asym,Bsym] = state_matrices_fun(phi,delta,deltadot,v,h,g,a,c,b,lambda)
%STATE_MATRICES_FUN
%    [ASYM,BSYM] = STATE_MATRICES_FUN(PHI,DELTA,DELTADOT,V,H,G,A,C,B,LAMBDA)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    13-Jan-2020 03:27:37

t2 = sin(lambda);
t3 = 1.0./b;
t4 = 1.0./h;
Asym = reshape([0.0,0.0,g.*t4.*(tan(phi).^2+1.0),0.0,0.0,-(t2.*t3.*t4.^2.*(h.*v.^2-a.*c.*g))./(sin(delta).^2-1.0),1.0,0.0,0.0],[3,3]);
if nargout > 1
    Bsym = [0.0;1.0;-(a.*t2.*t3.*t4.*v)./(sin(deltadot).^2-1.0)];
end
