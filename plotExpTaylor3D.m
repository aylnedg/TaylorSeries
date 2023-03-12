function plotExpTaylor3D()
    % Taylor serisi ile hesaplama için x, y değerleri
    [X, Y] = meshgrid(linspace(-5, 5, 100)); % -5 ile 5 arasında 100x100 grid
    
    % Gerçek fonksiyonun hesaplanması
    Z_exp = exp(X);
    
    % Taylor serisi ile hesaplanan fonksiyonun hesaplanması
    Z_taylor = zeros(size(X)); % boş bir dizi oluşturulur
    n = 10; % serinin kaç terimine kadar hesaplanacağını belirleyelim
    for i = 0:n
        Z_taylor = Z_taylor + (X.^i) / factorial(i);
end
% Grafik çizdirme
surf(X, Y, Z_exp, 'FaceAlpha', 0.5, 'EdgeColor', 'none'); hold on;
surf(X, Y, Z_taylor, 'FaceAlpha', 0.5, 'EdgeColor', 'none'); hold off;
xlabel('x');
ylabel('y');
zlabel('z');
title('exp(x) ve Taylor Serisi');
legend('exp(x)', 'Taylor Serisi');
end