classdef class4
 %wszystkie obliczenia wykonywane sa w konstruktorze
    properties
     f0
     B3
     R
     Q0
     
     Q
     w0
     L
     C
     A0
     A
       
    end
    
    methods
        function o = class4(p1,p2,p3,p4)
          o.f0 = p1;
          o.B3 = p2;
          o.R = p3;
          o.Q0 = p4;
       
          o.Q = o.f0 / (o.B3 *0.001);
          o.w0 = (2 * 3.1415 * o.f0) * 10^6;
          o.L = ((o.R * 1000) / (o.w0 *10)) * 10^6;
          o.C = ((1/o.w0^2)/(o.L*(10^-6)))*10^12;
          o.A0 = 1/(1-o.Q/o.Q0);
          o.A = o.A0 * o.Q *((7/o.f0)-(o.f0/7));
        end
    end
end

