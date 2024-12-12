% Example: Beam deflection under variable load
function deflection = beamDeflection(x, L, EI, load)
    % x = point to calculate deflection
    % L = beam length
    % EI = flexural rigidity
    % load = loading function
    
    function y = deflectionIntegrand(t)
        % Macaulay's method for beam deflection
        H = @(a) (a >= 0) .* a;  % Heaviside function
        y = load(t) .* H(x-t) .* (x-t).^3 / (6*EI);
    end
    
    % Transform to [-1,1] interval and integrate
    f = @(s) deflectionIntegrand(L/2 * (s+1)) * L/2;
    deflection = gauss(3, f);
end

% Usage example: Linearly varying load
L = 5;  % 5m beam
EI = 2e7;  % Flexural rigidity
load = @(x) 1000 * (x/L);  % Linear load (N/m)
d = beamDeflection(L/2, L, EI, load);
