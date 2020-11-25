classdef Alumno < Persona
    properties
        matricula
        curso
    end
    
    methods
        function obj = Alumno(matricula, curso, nombre, edad, sexo)
            obj = obj@Persona(nombre, edad, sexo);
            if nargin > 0
                obj.matricula = matricula;
                obj.curso = curso;    
            end
        end
        
        function cancelarMatricula(obj)
            fprintf('Se cancela la matricula de %s', obj.nombre);
        end
    end
end