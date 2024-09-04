------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                   S Y S T E M . V A L _ E N U M _ 1 6                    --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--             Copyright (C) 2021, Free Software Foundation, Inc.           --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  Instantiation of System.Value_N for enumeration types whose names table
--  has a length that fits in a 16-bit but not an 8-bit integer.

with Interfaces;
with System.Value_N;

package System.Val_Enum_16 is
   pragma Preelaborate;

   package Impl is new Value_N (Interfaces.Integer_16);

   function Value_Enumeration_16
     (Names   : String;
      Indexes : System.Address;
      Hash    : Impl.Hash_Function_Ptr;
      Num     : Natural;
      Str     : String)
      return    Natural
     renames Impl.Value_Enumeration;

   function Valid_Value_Enumeration_16
     (Names   : String;
      Indexes : System.Address;
      Hash    : Impl.Hash_Function_Ptr;
      Num     : Natural;
      Str     : String)
      return    Boolean
     renames Impl.Valid_Value_Enumeration;

end System.Val_Enum_16;
