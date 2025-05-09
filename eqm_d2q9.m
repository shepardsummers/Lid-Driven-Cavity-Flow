function [f_eq] = eqm_d2q9(rho, u, ksi, w)

    guh = pagemtimes(ksi',u);
    size(guh)

    udot = sum(u.^2, 1);

    size(udot)

    f_eq = rho .* (1 + guh/(1/3) + (guh.^2)/(2/9) - udot/(2/3)) .* w';
    
end

