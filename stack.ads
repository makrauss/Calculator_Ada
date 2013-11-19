-- Types & Subtypes
generic
	type MY_ITEM is private --private to make it general
	
-- Other Declarations

package stack is
	procedure Push (X : MY_ITEM);
	
	function Pop return X;
	
	function Get return X;
	
end stack;
