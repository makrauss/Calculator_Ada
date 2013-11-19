with Ada.Text_IO;
use Ada.Text_IO;

procedure calculator is
-- Types & SubTypes
    type MY_VALUE_TYPE is digits 8;
    
-- Packages
    package MY_VALUE_TYPE_IO is new Float_IO (MY_VALUE_TYPE);
    use MY_VALUE_TYPE_IO;
    
-- Declarations
    e : MY_VALUE_TYPE;

-- Functions
    function calculate return MY_VALUE_TYPE is
    --Types & Subtypes
        type OPERATOR_TYPE is ('*','/','+','-','?', n);
        
    --Declarations
        C : Character;
        EOL : Boolean;
        X : MY_VALUE_TYPE;
        OPERATION :OPERATOR_TYPE;
        
    --Functions
        function get_operator return OPERATOR_TYPE is
        
        begin
			Look_Ahead(C, EOL); --because I need to check before exec
			
            case c is
                when '*' =>
					get(C);
					return '*';
				when '/' =>
					get(C);
					return '/';
				when '+' =>
					get(C);
					return '+';
				when '-' =>
					get(C);
					return '-';
				when '0'..'9' =>
					begin
					    get(X);
						return n;
					end;
				when others =>
					get(C);
					return '?';
				end case;
        end;
    
    begin
        OPERATION := get_operator; --I need a private class to fix this
        return E;
        
    end calculate;

begin
---------- main(infinite) loop to keep the calculator running ----------
    loop
      declare
         Equals : MY_VALUE_TYPE;
      begin
         Put ("? ");
         Equals := calculate;
         New_Line;
      end;
   end loop;
   
end calculator;
