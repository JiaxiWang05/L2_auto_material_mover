% Example: Magnetic field from current-carrying wire
function B = magneticField(r, I, wire_shape)
    % r = observation point
    % I = current
    % wire_shape = parametric curve of wire
    
    function b = bioSavartIntegrand(t)
        dl = wire_shape.derivative(t);
        R = r - wire_shape.position(t);
        R_mag = norm(R);
        b = cross(dl, R) / (R_mag^3);
    end
    
    % Compute magnetic field using Biot-Savart law
    mu0 = 4*pi*1e-7;  % Permeability of free space
    f = @(x) bioSavartIntegrand(x);
    B = (mu0*I/(4*pi)) * gauss(3, f);
end

% Example: Helical coil
wire = struct('position', @(t) [cos(t), sin(t), t/(2*pi)], ...
             'derivative', @(t) [-sin(t), cos(t), 1/(2*pi)]);
B = magneticField([1,0,0], 1, wire);
