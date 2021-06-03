classdef class1
   %wszystkie obliczenia wykonywane sa w konstruktorze
    properties
       R1
       R2
       E 
       Urz
       Uf
       
       I
       I1
       I2
    end
    
    methods
        function obj = class1(p1,p2,p3,p4,p5)
            obj.R1 = p1;
            obj.R2 = p2;
            obj.E = p3;
            obj.Urz = p4;
            obj.Uf = p5;
            
           obj.I1 = obj.E/obj.R1;
           obj.I2 = (obj.E-obj.Urz-obj.Uf)/obj.R2;
           obj.I = obj.I1 + obj.I2;
        end
    end
end

