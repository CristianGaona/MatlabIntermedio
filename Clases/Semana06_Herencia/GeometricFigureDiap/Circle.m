classdef Circle < GeometricFigure & DrawFigure
    %Circle Class representing Circle
    %    contains radius, x, y and color.
    properties
        radius
    end
    
    methods
        function obj = Circle(radius, x, y, color)
            obj = obj@GeometricFigure(x, y, color);
            
            if nargin > 0
                obj.radius = radius;
            else
            end
        end
        
        function area = calculateArea(obj)
            if isempty(obj.radius)
                error('Radius is empty!')
            else
                area = pi * obj.radius^2;
            end
        end
        
        function perimeter = calculatePerimeter(obj)
            if isempty(obj.radius)
                error('Radius is empty!')
            else
                perimeter = 2 * pi * obj.radius;
            end
        end
        
        
        function plot(obj)
            ang=0:0.01:2*pi; x=0; y=0;
            xp = obj.radius*cos(ang);
            yp = obj.radius*sin(ang);
            plot(x+xp,y+yp, obj.color);
        end
        
    end
end