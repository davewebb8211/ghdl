--  Ortho implementation for GCC.
--  Copyright (C) 2002, 2003, 2004, 2005 Tristan Gingold
--
--  GHDL is free software; you can redistribute it and/or modify it under
--  the terms of the GNU General Public License as published by the Free
--  Software Foundation; either version 2, or (at your option) any later
--  version.
--
--  GHDL is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or
--  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
--  for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with GCC; see the file COPYING.  If not, write to the Free
--  Software Foundation, 59 Temple Place - Suite 330, Boston, MA
--  02111-1307, USA.
with Agcc.Trees; use Agcc.Trees;

package Ortho_Ident is
   subtype O_Ident is Tree;
   function Get_Identifier (Str : String) return O_Ident;
   function Get_String (Id : O_Ident) return String;
   function Is_Equal (L, R : O_Ident) return Boolean renames
     Agcc.Trees."=";
   function Is_Equal (Id : O_Ident; Str : String) return Boolean;
   O_Ident_Nul : constant O_Ident;
private
   O_Ident_Nul : constant O_Ident := NULL_TREE;
end Ortho_Ident;
