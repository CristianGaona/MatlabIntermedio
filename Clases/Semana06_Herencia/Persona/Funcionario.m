classdef Funcionario < Persona
    properties
        sector
        trabajando
    end
    
    methods
        function obj = Funcionario(nombre, edad, sexo, sector, trabajando)
            obj = obj@Persona(nombre, edad, sexo);
            if nargin > 0
                obj.sector = sector;
                obj.trabajando = trabajando;
            end
        end
        
        function mudarTrabajando(obj)
            obj.trabajando = ~obj.trabajando;
        end
    end
end