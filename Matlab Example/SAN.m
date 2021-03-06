function s=san(t,x1,x2)
h=1;
hh=(x2-x1)/3;
r1=x1;
r2=x1+hh;
r3=x2-hh;
r4=x2;
x=[r1 r2 r3 r4];
n=4;
M=bigm(x,h,n);
if t>=x(1)&t<=x(2)
    s=1/(6*h)*M(1)*(x(2)-t).^3+...
        1/(6*h)*M(2)*(t-x(1)).^3+...
        (sin(1)-1/6*M(1)*h.^2)*(x(2)-t)/h+...
        (sin(2)-1/6*M(2)*h.^2)*(t-x(1))/h;
elseif t>=x(2)&t<=x(3)
    s=1/(6*h)*M(2)*(x(3)-t).^3+...
        1/(6*h)*M(3)*(t-x(2)).^3+...
        (sin(2)-1/6*M(2)*h.^2)*(x(3)-t)/h+...
        (sin(3)-1/6*M(3)*h.^2)*(t-x(2))/h;
elseif t>=x(3)&t<=x(4)
    s=1/(6*h)*M(3)*(x(4)-t).^3+...
        1/(6*h)*M(4)*(t-x(3)).^3+...
        (sin(3)-1/6*M(3)*h.^2)*(x(4)-t)/h+...
        (sin(4)-1/6*M(4)*h.^2)*(t-x(3))/h;
end