classdef Persona < handle
    properties
        nombre
        edad 
        sexo 
    end
    
    methods
        function obj = Persona(nombre, edad, sexo)
            if nargin > 0
                obj.nombre = nombre;
                obj.edad = edad;
                obj.sexo = sexo;
            end
        end
        
        function setNombre(obj, nombre)
            obj.nombre = nombre;
        end
        
        function setEdad(obj, edad)
            obj.edad = edad;
        end
        
        function setSexo(obj, sexo)
            obj.sexo = sexo;
        end
        
        function celebrarCumpleanio(obj)
            fprintf('Celebrando el cumpleaños de %s\n', obj.nombre);
        end
    end
end