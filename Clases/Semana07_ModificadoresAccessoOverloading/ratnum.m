classdef A < handle
   properties
      x = 1
   end
 
   methods
      function obj = A(x)
        if nargin == 1
            obj.x = x;
        end
      end
    end
end



classdef Der < A
    properties
        y = 2
    end
 
     methods
       function obj = Der(y)
           obj = obj@A();
 
           if nargin == 1
              obj.y = y;
           end
       end
    end
end


