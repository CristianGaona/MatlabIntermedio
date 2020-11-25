classdef EsferoValue
    properties
        modelo;
        color;
        punta;
        carga;
        tapado;
    end
    
    methods
        function obj = EsferoValue(modelo, color, punta, carga, tapado)
            if nargin > 0
                obj.modelo = modelo;
                obj.color = color;
                obj.punta = punta;
                obj.carga = carga;
                obj.tapado = tapado;
            end
        end
        
        function rayar(obj)
            if obj.tapado
                error("No se puede rayar, el esfero está tapado")
            else
                disp("Rayando")
            end
        end
        
        function obj = tapar(obj)
            obj.tapado = true;
        end
    end
end