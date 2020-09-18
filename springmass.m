function ydotvec=springmass(t,yvec,b_over_m,k_over_m, C)
ydotvec=zeros(2,1); %column vector-- required format for odesolver

force = C*heaviside(t);

ydotvec(1)=yvec(2);
ydotvec(2)=-b_over_m*yvec(2)-k_over_m*yvec(1)-force;