classdef Hora < handle
  
    properties (SetAccess = private)
        hora
        minutos
        segundos
    end
    
    methods 
        function obj = Hora(hora, minutos, segundos)
            %disp(obj)
            correcta= obj.validar();
            if(correcta == true)
            fprintf("\n\nLa fecha entrada es CORRECTA\n")
                if nargin > 0
                    obj.hora = hora;
                    obj.minutos = minutos;
                    obj.segundos = segundos;
                end
            else
               fprintf("\n\nLa fecha entrada es FALSA CON\n")
            end
        end
        %Leer
        function obj = leer(obj)
                obj.hora = input('Ingerese hora: ');
                obj.minutos = input('Ingerese minutos: ');
                obj.segundos = input('Ingerese segundos: ');
            correcta= obj.validar();
            if(correcta == true)
                fprintf("\n\nLa fecha entrada es CORRECTA\n")
                Hora(obj.hora, obj.minutos, obj.segundos);
                
            else
                fprintf("\n\nLa fecha entrada es FALSA\n")
             
                %Hora(obj.hora, obj.minutos, obj.segundos);
            end
        end
        
        %Validar
        function out = validar(obj)
            if (obj.minutos < 0 || obj.minutos >= 60 || obj.segundos <0 || obj.segundos >=60 || obj.hora < 0 || obj.hora >= 24)
                out = false;
                obj.hora = 0;
                obj.minutos = 0;
                obj.segundos = 0;
            else
                out = true;
            end
          
        end
        % Mutadores y Antecedentes
        function hor = getHora(obj)
             hor=obj.hora;
         end
         
         function min=getMinuto(obj)
             min=obj.minutos;
         end
         
         function seg=getSegundo(obj)
             seg=obj.segundos;
         end
         
         function setHoras(obj,hora)
             obj.hora=hora;
         end
         function setMinutos(obj,minutos)
             obj.minutos=minutos;
         end
         function setSegundos(obj,segundos)
             obj.segundos=segundos;
         end
         
         %Método Print
         function imprimir = print(obj)
             %disp(obj.getHora + ":" + obj.getMinuto + ":"+ obj.getSegundo)
             imprimir = hours(obj.getHora) + minutes(obj.getMinuto) +  seconds(obj.getSegundo);
             imprimir.Format = 'hh:mm:ss';
              
         end
         
         %Metodo aSegundo
         function aSeImp = aSegundo(obj)
             fprintf("segundos trancurridos desde la media noche: " );
             hAS = obj.getHora() * 3600;
             mAs = obj.getMinuto() * 60;
             aSeImp = hAS + mAs +obj.getSegundo();
         end
         %Método deSegundos
         function aSeImp = deSegundos(obj, segundos)
             fprintf("segundos trancurridos desde la media noche con un numero de entrada: " );
             datestr(segundos/(24*60*60), 'HH:MM:SS')
         end
          %Método segundosDesde
          
          function segDesde = segundosDesde(obj, hora, minutos, segundos)
             fprintf("Numeros de segundos entre la hora y la hora proporcionada: " );
             hAS = hora * 3600;
             mAs = minutos * 60;
             aSeImp = hAS + mAs + segundos;
             segDesde = aSeImp - obj.aSegundo();
          end
          
          %Método siguiente
          function sig = siguiente(obj)
              if(obj.getSegundo() >=0 && obj.getSegundo()<59)
                  obj.setSegundos(obj.getSegundo() + 1)
                  fprintf("caso1")
              elseif (obj.getSegundo()>=59)
                  obj.setMinutos(obj.getMinuto()+ 1)
                  obj.setSegundos(0)
                  fprintf("caso2")
                    if(obj.getMinuto()>59)
                        obj.setHoras(obj.getHora()+1)
                        obj.setMinutos(0)
                        %obj.setSegundos(0)
                        fprintf("caso3")
                    end
              end
              
          end
    end
end

