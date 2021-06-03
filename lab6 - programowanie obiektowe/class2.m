classdef class2
   %wszystkie obliczenia wykonywane sa w konstruktorze
    properties
        R1
        R2
        E1
        E2
        E0
        
        R0
        gamma
    end
    
    methods
        function obj = class2(p1,p2,p3,p4,p5)
            obj.R1 = p1;
            obj.R2 = p2;
            obj.E1 = p3;
            obj.E2 = p4;
            obj.E0 = p5;
            
           obj.gamma = log(obj.R1/obj.R2)/log(obj.E2/obj.E1);
           obj.R0 = obj.R1*(obj.E1/obj.E0)^obj.gamma;
        
        end
    end
end

