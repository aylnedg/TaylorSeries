function taylorExp()
    x = 1; % x değerini belirleyelim
    y = 1; % ilk terimi belirleyelim
    
    fprintf('n = %d, y = %f\n', 0, y); % ilk terim
    
    for n = 2:2:10 % 2'şer aralıklarla terim sayısını arttıralım
        y = y + (x^(n-1)) / factorial(n-1);
        fprintf('n = %d, y = %f\n', n, y); % terim sayısı ve hesaplanan y değeri
    end

end
