classdef Profesor < Persona
    properties
        especialidad
        salario
    end
    
    methods
        function obj = Profesor(nombre, edad, sexo, especialidad, salario)
            obj = obj@Persona(nombre, edad, sexo);
            if nargin > 0
                obj.especialidad = especialidad;
                obj.salario = salario;
            end
        end
        
        function recibirAumento(obj, valor)
            obj.salario = obj.salario + valor;
        end
    end
end