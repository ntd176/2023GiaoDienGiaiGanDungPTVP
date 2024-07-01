function [x, y] = Hien_An_Hinh_Thang(fxy, x0, xn, y0, N, e)
h = (xn - x0)/N;
x = x0:h:xn;
y = zeros(1, length(x));
y(1) = y0;
    for i = 1:N
    z(i + 1) = y(i) + h * fxy(x(i), y(i));      
    y(i + 1) = y(i) + (h/2) * (fxy(x(i), y(i)) + fxy(x(i+1), z(i+1)));
        if abs(y(i+1) - z(i+1)) <= e
            break
        end
    end
end