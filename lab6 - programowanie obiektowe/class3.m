classdef class3
   %wszystkie obliczenia wykonywane sa w konstruktorze
    properties
       Urzn
       Pdm
       tetaMax
       a_tetaMax
       
       a_Pdm
       b_IrzMax1
       b_IrzMax2
       c_Rth
       
    end
    
    methods
        function obj = class3(p1,p2,p3,p4)
          obj.Urzn = p1;
          obj.Pdm = p2;
          obj.tetaMax = p3;
          obj.a_tetaMax = p4;
       
          obj.a_Pdm = obj.Pdm*((obj.tetaMax - obj.a_tetaMax)/(obj.tetaMax - 25));
          obj.b_IrzMax1 = obj.Pdm/obj.Urzn * 1000;
          obj.b_IrzMax2 = obj.a_Pdm/obj.Urzn * 1000;
          obj.c_Rth = (obj.tetaMax - 25)/obj.Pdm;
        
        end
    end
end

