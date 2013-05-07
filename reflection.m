function Path_out=reflection(Path_in,a,b)

x_i=Path_in(1);
y_i=Path_in(2);
alpha_i=Path_in(3);
if alpha_i<90
    if y_i<tand(alpha_i)*x_i+b-tand(alpha_i)*a
        x_o=a;
        y_o=tand(alpha_i)*a+y_i-tand(alpha_i)*x_i;
        alpha_o=180-alpha_i;
    else 
        y_o=b;
        x_o=(y_o+tand(alpha_i)*x_i-y_i)/tand(alpha_i);
        alpha_o=alpha_i;
    end
elseif alpha_i==90
    x_o=x_i;
    y_o=b;
    alpha_o=alpha_i;
elseif alpha_i>90&alpha_i<180
    if y_i<tand(alpha_i)*x_i+b
        x_o=0;
        y_o=y_i-tand(alpha_i)*x_i;
        alpha_o=180-alpha_i;
    else
        y_o=b;
        x_o=(y_o+tand(alpha_i)*x_i-y_i)/tand(alpha_i);
        alpha_o=alpha_i;
    end
elseif alpha_i==180;
    x_o=x_i;
    y_o=b;
    alpha_o=90;
elseif alpha_i>180&alpha_i<270
    if y_i>tand(alpha_i)*x_i
        x_o=0;
        y_o=y_i-tand(alpha_i)*x_i;
        alpha_o=540-alpha_i;
    else
        y_o=0;
        x_o=(y_o+tand(alpha_i)*x_i-y_i)/tand(alpha_i);
        alpha_o=360-alpha_i;
    end
elseif alpha_i==270
    x_o=x_i;
    y_o=b;
    alpha_o=90;
elseif alpha_i>270&alpha_i<360
    if y_i>tand(alpha_i)*x_i-tand(alpha_i)*a
        x_o=a;
        y_o=tand(alpha_i)*a+y_i-tand(alpha_i)*x_i;
        alpha_o=540-alpha_i;
    else 
        y_o=0;
        x_o=(y_o+tand(alpha_i)*x_i-y_i)/tand(alpha_i);
        alpha_o=360-alpha_i;
    end
else
    x_o=x_i;
    y_o=b;
    alpha_o=90;
end
    
Path_out=[x_o,y_o,alpha_o];
    
    