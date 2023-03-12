function output=myexp(x, N)
x = input('enter x please : ' ); % x variable in the series %x=1
N =  input('enter N please : ' ); % number of terms in the series N=20
term = 1; % 1+(x/1!)+(x^2/2!)...)== for the initial 1 term
output = term;
for i=1:N
    term= term*x/i; %% i=1 x=1 for term=1 , 1=2 x=1 for term=1/6 6==3!
    output = output + term;  %adding each term on top of each other
end
end




 
 