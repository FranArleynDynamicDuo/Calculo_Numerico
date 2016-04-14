% Pregunta 2. Hacer un Spline

    whitebg('b');

    clf 
    t = 1:2; 
    th = linspace(1, 2); 
    
    x = [4.6, 0]; 
    y = [2.8, 6.1];
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [0, 4.1]; 
    y = [6.1, 6.1];  
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [5.3, 2.5]; 
    y = [3.3, 5.4]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [2.5, 3.8]; 
    y = [5.4, 5.4]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)

    x = [3.6, 5.3]; 
    y = [4.6, 9.8]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [5.3, 6.5]; 
    y = [9.8, 6.1]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [4.2, 5.3]; 
    y = [4.1, 7.3]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)

    x = [5.3, 5.7]; 
    y = [7.3, 6.1]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [4.9, 10.5]; 
    y = [6.1, 6.1]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [10.5 , 7.3]; 
    y = [6.1, 3.8]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [4.7, 8.2]; 
    y = [5.4; 5.4]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [8.2, 7.1]; 
    y = [5.4, 4.6]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)

    x = [6.8, 8.5]; 
    y = [5.4, 0]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [8.5, 5.4]; 
    y = [0, 2.3]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [6, 7.1]; 
    y = [5.4, 2.1]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)

    x = [7.1, 6.1]; 
    y = [2.1, 2.8]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [6.7, 2]; 
    y = [3.3, 0]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)

    x = [2, 3.3]; 
    y = [0, 3.8]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)
    
    x = [6.4, 3.6]; 
    y = [4, 2.1]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)

    x = [3.6, 4]; 
    y = [2.1, 3.3]; 
    xh = interp1(t,x,th,'spline'); 
    yh = interp1(t,y,th,'spline'); 
    plot(xh, yh, 'y', 'linewidth', 5) 
    hold on; 
    plot(x, y, 'ko', 'linewidth', 2)