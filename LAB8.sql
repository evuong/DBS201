-- ******************************
-- DBS201 - Lab 8 - Week 10
-- Name: Jonathan Mani & Edward Vuong
-- Student ID: 123280182 & 120246186
-- Date: Nov 12, 2018
-- ******************************


-- Step 1)
-- What type of data does each line in the report represent? 
--Each line in the report contains information about a part



-- What attributes can you identify from the user view? 
--part number, part description, quantity on hand, class, wearhouse, price


-- What would be a suitable name for the UNF relation?   
-PART


-- Which attribute would be suitable as a primary key?
--Part Number


-- Describe the UNF relation using DBDL (DDL) (not commented, executable sql code):
PART [ Part_Number (PK),  Part_Description,  Part_Qty,  Part_Class,  Part_Warehouse,  Part_Price ]


-- Step 3)
-- Using the following table

-- For the following User View, determine the UNF and the 1NF and hand in this page to your instructor. Solve this without splitting the table.

--Premiere Corporation Order Detail Report 
--Order       Order             Cust          Part         Part           Number    Quoted        Total  
--Number  Date                Number   Number Desc          Ordered     Price 
               
-- 12489      2016-09-02    124            AX12       Iron              11            14.95       164.45  
-- 12491      2016-09-02     311           BT04       GasGrill          1            149.99       149.99  
--                                                          BZ66       Washer          2            399.99       799.98  
-- 12494      2016-09-04    315           CB03       Bike                4             279.99     1,119.96  
-- 12495      2016-09-04    256           CX11       Blender          2             22.95        45.90  
-- 12498      2016-09-05    522           AZ52       Dartboard      2             12.95        25.90  
--                                                         BA74        Basketball     4             24.95        99.80  
-- 12500      2016-09-05    124           BT04        GasGrill          3            149.99       449.97  
-- 12504      2016-09-05    522           CZ81       Treadmill        2           325.99       651.98  


-- UNF
ORDER [  Order_number(PK),  (  Order_Date,  Part_Number  ), Cust_Number,  Part_Desc,  Number_Ordered,  Quoted_Price,  Total ];
 
--Premiere Corporation Order Detail Report 
--Order       Order              Part	    Cust           Part           Number    Quoted        Total  
--Number  Date                Number    Number    Desc          Ordered     Price 
               
-- 12489      2016-09-02      AX12	     124            Iron               11            14.95           164.45  
-- 12491      2016-09-02      BT04	      311           GasGrill          1            149.99         149.99  
--                                          BZ66    	                       Washer          2            399.99          799.98  
-- 12494      2016-09-04      CB03	     315            Bike                4             279.99         1,119.96  
-- 12495      2016-09-04      CX11	     256            Blender          2             22.95           45.90  
-- 12498      2016-09-05      AZ52	     522            Dartboard      2             12.95           25.90  
--                                          BA74                            Basketball     4             24.95            99.80  
-- 12500      2016-09-05      BT04	     124            GasGrill          3            149.99           449.97  
-- 12504      2016-09-05      CZ81	      522          Treadmill        2           325.99            651.98  

-- 1NF
ORDER [  Order_number (PK),  Part_Number (PK),  Cust_Number,  Part_Desc,  Number_Ordered,  Order_Date,  Quoted_Price,  Total  ];

--Premiere Corporation Order Detail Report 
--Order       	Part 	Cust	Part	Number	Order	Quoted	Total	   
--Number	Number	Number	Desc	Ordered	Date                	Price
               
-- 12489     	AX12	124	Iron	11	2016-09-02   	14.95	164.45
-- 12491     	BT04	311	GasGrill 	1	2016-09-02	149.99	149.99
-- 12491             	BZ66	311	Washer                 2       	2016-09-02	399.99	799.98
-- 12494     	CB03	315	Bike 	4	2016-09-04	279.99	1,119.96
-- 12495    	CX11	256	Blender	2  	2016-09-04	22.95	45.90
-- 12498     	AZ52	522	Dartboard	2	2016-09-05	12.95	25.90
-- 12498              	BA74	522	Basketball            4	2016-09-05	24.95	99.80
-- 12500    	BT04	124	GasGrill  	3	2016-09-05	149.99	449.97
-- 12504     	CZ81	522	Treadmill 	2	2016-09-05	325.99	651.98




