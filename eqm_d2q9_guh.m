function [f_eq] = eqm_d2q9(rho, u, E, w)

    cs = 1/sqrt(3);
    
    f_eq = [0, 0, 0, 0, 0, 0, 0, 0, 0];
    for i = 1:9
        f_eq(i) = w(:, i) * rho * (1 + dot(u, E(:,i))/(cs^2) + (dot(u, E(:,i))^2)/(cs^4) - dot(u, u)/(2*(cs^2)));
    end

end

