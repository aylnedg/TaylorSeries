function testTaylorExp()
    x = linspace(-5, 5, 100); % x değerlerini oluşturalım
    y_exp = exp(x); % gerçek fonksiyonu hesaplayalım
    
    % Taylor serisi terimlerini hesaplayalım
    y_taylor = zeros(size(x));
    for n = 0:2:10 % 2'şer aralıklarla terim sayısını arttıralım
        y_taylor = y_taylor + (x.^n) / factorial(n);
    end
    
    % Grafik çizdirelim
    plot(x, y_exp, 'b-', x, y_taylor, 'r--');
    xlabel('x');
    ylabel('f(x)');
    title('exp(x) ve Taylor Serisi');
    legend('exp(x)', 'Taylor Serisi');
end


