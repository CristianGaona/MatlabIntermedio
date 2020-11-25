classdef Rect
    % A class representing a rectangle
    
    properties(Access=public)
        length
        width
    end
    
    methods
        function obj = Rect(l, w)
            % RECT Construct an instance of a rectangle width length l and
            % width w
            if nargin == 2 % nargin is the # of arguments entered in the function
                obj.length = l;
                obj.width = w;
            end
        end
        
        function width = getWidth(self)
            % getWidth is the width of a side of the rectangle
            width = self.width;
        end
        
        function self = setWidth(self, newWidth)
            % setWidth sets the width of the rectangle to newWidth
            if newWidth > 0
                self.width = newWidth;
            else
                error("The width must be greater than 0")
            end
        end
        
        function area = area(self)
            %getArea is the area of the rectangle
            area = self.length * self.width;
        end
        
        function perimeter = perimeter(self)
            %getPerimeter is the perimeter of the rectangle
            perimeter = 2*(self.length+self.width);
        end
        
        
        function length = getLength(self)
            %getLength is the length of a side of the rectangle
            length = self.length;
        end
        
        function b = lt(self, obj)
            % Overloading < symbol for rectangle, compare by area
            b = self.area < obj.area;
        end
        
        
    end
end