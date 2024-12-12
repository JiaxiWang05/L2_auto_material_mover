% Example: Moment of inertia for non-uniform cross-section
function I = momentOfInertia(shape, density)
    % shape = function defining cross-section boundary
    % density = material density function
    
    function y = inertiaIntegrand(r, theta)
        x = r .* cos(theta);
        y = r .* sin(theta);
        return density(x, y) .* r.^3;
    end
    
    % Double integration using nested Gauss quadrature
    f = @(t) gauss(3, @(r) inertiaIntegrand(r, t));
    I = gauss(3, f);
end

% Example: Variable density cylinder
shape = @(theta) 0.1;  % 10cm radius
rho = @(x,y) 7800 * (1 + 0.1*sqrt(x.^2 + y.^2));  % Density variation
I = momentOfInertia(shape, rho);
