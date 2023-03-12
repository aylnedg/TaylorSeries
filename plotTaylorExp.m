function plotTaylorExp()
    x = linspace(-2, 2, 100); % x değerlerini oluşturalım
    y_exp = exp(x); % gerçek fonksiyonu hesaplayalım
    
    n_values = [0, 2, 4, 6, 8, 10]; % terim sayılarını belirleyelim
    colors = ['r', 'g', 'b', 'm', 'c', 'k']; % her terim sayısı için farklı bir renk kullanalım
    
    % Taylor serisi terimlerini hesaplayalım
    y_taylor = zeros(length(n_values), length(x));
    for i = 1:length(n_values)
        n = n_values(i);
        y_taylor(i,:) = (x.^n) / factorial(n);
    end
    
    % Grafik çizdirelim
    figure;
    plot(x, y_exp, 'k-', 'LineWidth', 2);
    hold on;
    for i = 1:length(n_values)
        plot(x, y_taylor(i,:), colors(i), 'LineWidth', 1);
    end
    xlabel('x');
    ylabel('f(x)');
    title('exp(x) ve Taylor Serisi');
    legend(['exp(x)', arrayfun(@(n) sprintf('Taylor Serisi (n = %d)', n), n_values, 'UniformOutput', false)]);
    hold off;
end
