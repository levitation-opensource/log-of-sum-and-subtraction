
function test_add_lns()

    a_ln = 709.5;
    b_ln = 709.0;
    
    a = exp(a_ln);
    b = exp(b_ln);
    
    R = a + b;
    
    R_ln = add_lns(a_ln, b_ln);
    
    disp(['a_ln: ' num2str(a_ln) ' a: ' num2str(a, '%11.4g')]);
    disp(['b_ln: ' num2str(b_ln) ' b: ' num2str(b, '%11.4g')]);
    disp(['R_ln: ' num2str(R_ln) ' R: ' num2str(R, '%11.4g')]);

end
