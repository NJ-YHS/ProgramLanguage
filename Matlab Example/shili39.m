h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','ʵ��39');
x=0:0.5:2*pi;
y=cos(x);
h=plot(x,y);
grid on
set(gcf,'toolbar','none')
hm=uimenu('label','example');
huidiao1=[...
        'set(hm_gridon,''checked'',''on''),',...
        'set(hm_gridoff,''checked'',''off''),',...
        'grid on'];
huidiao2=[...
        'set(hm_gridoff,''checked'',''on''),',...
        'set(hm_gridon,''checked'',''off''),',...
        'grid off'];
hm_gridon=uimenu(hm,'label','grid on',...
    'checked','on',...
    'callback',huidiao1);
hm_gridoff=uimenu(hm,'label','grid off',...
    'checked','off',...
    'callback',huidiao2);