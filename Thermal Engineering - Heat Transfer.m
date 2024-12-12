% Example: Heat conduction with temperature-dependent conductivity
function Q = heatTransfer(T1, T2, L, k)
    % T1, T2 = temperatures at boundaries
    % L = material thickness
    % k = thermal conductivity function
    
    % Transform the heat equation integral
    dT = T2 - T1;
    f = @(x) 1 ./ k(T1 + dT*(1+x)/2);
    
    % Compute heat flux
    R = L/2 * gauss(3, f);  % Thermal resistance
    Q = dT / R;  % Heat flux
end

% Example: Silicon heat conductor
T1 = 300;  % K
T2 = 400;  % K
L = 0.01;  % 1cm thickness
k = @(T) 148 * (300./T).^1.65;  % Temperature-dependent conductivity
Q = heatTransfer(T1, T2, L, k);
