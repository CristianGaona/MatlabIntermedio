classdef GeometricFigure < handle
    %GeometricFigure
    properties
        x
        y
        color
    end
    
    methods
        function obj = GeometricFigure(x, y, color)
            if nargin > 0
                obj.x = x;
                obj.y = y;
                obj.color = color;
            end
        end
        
     
    end
    
    methods (Abstract)
        area = calculateArea(obj);
        perimeter = calculatePerimeter(obj);
    end
end