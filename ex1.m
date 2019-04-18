t = -10:0.01:10;
u = cos(100 * t + pi/3);
k = [20 60 100];

for i = 1:3
    h = exp(-k(i) * t);
    h(1:1001) = 0;
    y = conv(u, h, 'same');

    str = sprintf('k = %d', k(i));
    figure('Name', str, 'NumberTitle', 'off');
    title({str});
    
    subplot(2, 1, 1);
    plot(t, u);
    title("Semnalul u");
    
    subplot(2, 1, 2);
    plot(t, y);
    title("Semnalul y");
end