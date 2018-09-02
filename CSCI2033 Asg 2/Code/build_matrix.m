function A = build_matrix()
    I = eye(8);
    A = eye(8);
    for i = 1:8
        e = get_forces(I(:,i));
        A(:, i) = e; 
    end
end