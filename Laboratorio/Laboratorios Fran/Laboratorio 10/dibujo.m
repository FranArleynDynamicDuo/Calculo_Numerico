    clf
    x = [0, 0 , 0 , 0 , 0 , 0.3 , 0.5 , 0.4 , 0.3 , 0.2 , 0.1 , 0 , -0.1 , -0.15, -0.12,-0.04];
    y = [0,0.3, 0.6 , 0.8 , 1   , 1.1 , 1.6 , 2.1 , 2.4,2.5 ,2.52, 2.53 , 2.43 , 2.3, 2,1.7];
    
    y = y + 1;
    t = 1:length(x);
    puntox = 0;
    puntoy = 0.5;
    th = linspace(1, length(x));
    xh = interp1(t, x,th, 'spline');
    yh = interp1(t, y,th, 'spline');
    plot(xh, yh, 'g', 'linewidth', 8);
    hold on;
    %plot(x, y, 'ro', 'linewidth', 8);
    plot(puntox,puntoy,'go', 'linewidth', 8);
    xcir = [0, 1.25 , 0 , -1.25 , 0];
    ycir = [-0.5, 2 , 5 , 2 , -0.5];
    plot(xcir,ycir,'r', 'linewidth', 8);
    axis([-2 2 -1 6]) 
    whitebg('k');
    
