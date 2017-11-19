function map=getColormap(options)
if isstruct(options)&&any(strcmpi(options.Mode,{'hudson','lune','hx'}))&& any(strcmpi(options.Colormap,{'Default','Clear'}))
    map='jet';%'parula';
elseif isstruct(options)&&~iscell(options.Mode)&&any(strcmpi(options.Mode,{'AmplitudeRatio','LogAmplitudeRatio','AmplitudeRatio2d','LogAmplitudeRatio2d'})) && any(strcmpi(options.Colormap,{'Default','Clear'}))
    map=[0         0    0.5625;         0         0    0.5844;         0         0    0.6062;         0         0    0.6281;...
         0         0    0.6500;         0         0    0.6719;         0         0    0.6938;         0         0    0.7156;...
         0         0    0.7375;         0         0    0.7594;         0         0    0.7813;         0         0    0.8031;...
         0         0    0.8250;         0         0    0.8469;         0         0    0.8687;         0         0    0.8906;...
         0         0    0.9125;         0         0    0.9344;         0         0    0.9563;         0         0    0.9781;...
         0         0    1.0000;         0    0.2000    1.0000;         0    0.4000    1.0000;         0    0.6000    1.0000;...
         0    0.8000    1.0000;         0    1.0000    1.0000;    0.0714    1.0000    0.9286;    0.1429    1.0000    0.8571;...
    0.2143    1.0000    0.7857;    0.2857    1.0000    0.7143;    0.3571    1.0000    0.6429;    0.4286    1.0000    0.5714;...
    0.5000    1.0000    0.5000;    0.5714    1.0000    0.4286;    0.6429    1.0000    0.3571;    0.7143    1.0000    0.2857;...
    0.7857    1.0000    0.2143;    0.8571    1.0000    0.1429;    0.9286    1.0000    0.0714;    1.0000    1.0000         0;...
    1.0000    0.8571         0;    1.0000    0.7143         0;    1.0000    0.5714         0;    1.0000    0.4286         0;...
    1.0000    0.2857         0;    1.0000    0.1429         0;    1.0000         0         0;    0.9706         0         0;...
    0.9412         0         0;    0.9118         0         0;    0.8824         0         0;    0.8529         0         0;...
    0.8235         0         0;    0.7941         0         0;    0.7647         0         0;    0.7353         0         0;...
    0.7059         0         0;    0.6765         0         0;    0.6471         0         0;    0.6176         0         0;...
    0.5882         0         0;    0.5588         0         0;    0.5294         0         0;    0.5000         0         0];
elseif isstruct(options)&&~iscell(options.Mode)&&any(strcmpi(options.Mode,{'AmplitudeProbability','AmplitudeProbability2d','AmplitudeRatioProbability','LogAmplitudeRatioProbability','AmplitudeRatio2dProbability','LogAmplitudeRatio2dProbability'})) && any(strcmpi(options.Colormap,{'Default','Clear'}))
    map='Hot';
elseif isstruct(options)&&any(strcmpi(options.Colormap,{'Default','Clear'}))
    map=[0 0 0.5625;0 0 0.596153855323792;0 0 0.629807710647583;0 0 0.663461565971375;0 0 0.697115361690521;...
        0 0 0.730769217014313;0 0 0.764423072338104;0 0 0.798076927661896;0 0 0.831730782985687;0 0 0.865384638309479;...
        0 0 0.899038434028625;0 0 0.932692289352417;0 0 0.966346144676209;0 0 1;0 0.0555555559694767 1;...
        0 0.111111111938953 1;0 0.16666667163372 1;0 0.222222223877907 1;0 0.277777791023254 1;0 0.333333343267441 1;...
        0 0.388888895511627 1;0 0.444444447755814 1;0 0.5 1;0 0.555555582046509 1;0 0.611111104488373 1;...
        0 0.666666686534882 1;0 0.722222208976746 1;0 0.777777791023254 1;0 0.833333313465118 1;0 0.888888895511627 1;...
        0 0.944444417953491 1;0 1 1;1 0.959999978542328 0;1 0.918260872364044 0;1 0.876521706581116 0;...
        1 0.834782600402832 0;1 0.793043434619904 0;1 0.75130432844162 0;1 0.709565222263336 0;1 0.667826056480408 0;...
        1 0.626086950302124 0;1 0.584347784519196 0;1 0.542608678340912 0;1 0.500869572162628 0;1 0.459130436182022 0;...
        1 0.417391300201416 0;1 0.37565216422081 0;1 0.333913028240204 0;1 0.292173892259598 0;1 0.250434786081314 0;...
        1 0.208695650100708 0;1 0.166956514120102 0;1 0.125217393040657 0;1 0.083478257060051 0;1 0.0417391285300255 0;...
        1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0;0.5 0 0];
elseif isstruct(options)&&strcmpi(options.Colormap,'bluered')
    ramp = (ones(1,64)-linspace(0,1,64)).^.5;
    red  = [ ones(1,64); ramp; ramp ]';
    blue = [ ramp; ramp; ones(1,64) ]';
    map = [ blue(64:-1:1,:); red ];
elseif isstruct(options)&&strcmpi(options.Colormap,'br')
    ramp = 0.9*((ones(1,64)-linspace(0,1,64)).^.5);
    red  = [ ones(1,64); ramp; ramp ]';
    blue = [ ramp; ramp; ones(1,64) ]';
    map = [ blue(64:-1:1,:); red ];
elseif isstruct(options)
    map=options.Colormap;
else
    options.Colormap='Default';
    options.Mode='faultplane';
    map=getColormap(options);
end
end