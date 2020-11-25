% referencia de diferencia
classdef EsferoHandle < handle
    properties
        modelo;
        color;
        punta;
        carga;
        tapado;
    end
    
    methods
        % constructor
        function obj = EsferoHandle(modelo, color, punta, carga, tapado)
            if nargin > 0
                obj.modelo = modelo;
                obj.color = color;
                obj.carga = carga;
                obj.punta = punta;
                obj.tapado = tapado;
            end
        end
        
        function rayar(obj)
            if obj.tapado == true
                error("No se puede rayar, el esfero está tapado")
            else
                disp("Rayando........")
            end
        end
        
        
        function tapar(obj)
            obj.tapado = true;
        end
    end
end