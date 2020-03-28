------------------------------------------------------------------------------
-----for location_id = 1
-------------------------------------------------------------------------------
INSERT INTO LOCATION (location_name) values('Perimeter');


INSERT INTO DEPARTMENT (department_name,location_id) values('Bakery', 1);
INSERT INTO DEPARTMENT (department_name, location_id) values ('Deli and Foodservice', 1);
INSERT INTO DEPARTMENT (department_name, location_id) values ('Floral',1);
INSERT INTO DEPARTMENT (department_name, location_id) values ('Seafood',1);


INSERT INTO CATEGORY (category_name, department_id) values ('Bakery Bread',1);
INSERT INTO CATEGORY (category_name, department_id) values ('In Store Bakery',1);

INSERT INTO CATEGORY (category_name, department_id) values ('Self Service Deli Cold',2);
INSERT INTO CATEGORY (category_name, department_id) values ('Service Deli',2);

INSERT INTO CATEGORY (category_name, department_id) values ('Bouquets and Cut Flowers',3);
INSERT INTO CATEGORY (category_name, department_id) values ('Gifts',3);
INSERT INTO CATEGORY (category_name, department_id) values ('Plants',3);

INSERT INTO CATEGORY (category_name, department_id) values ('Frozen Shellfish',4);
INSERT INTO CATEGORY (category_name, department_id) values ('Other Seafood',4);


INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Bagels',1);   --1 inserted values sub_category_id
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Baking or Breading Products',1);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('English Muffins or Biscuits',1);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Flatbreads',1);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Breakfast Cake or Sweet Roll',2);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Cakes',2);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Pies',2);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Seasonal',2);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Beverages',3);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Cheese All Other',4);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Cheese American',4);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Bouquets and Cut Flowers',5);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Gifts',6);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Plants',7);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Frozen Shellfish',8);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('All Other Seafood',9);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Prepared Seafood Entrees',9);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Seafood Salads',9);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Smoked Fish',9);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Seafood Breading Sauces Dips',9);  --20 inserted values sub_category_id



------------------------------------------------------------------------------
-----for location_id = 2
-------------------------------------------------------------------------------
INSERT INTO LOCATION (location_name) values('Center');


INSERT INTO DEPARTMENT (department_name, location_id) values('Dairy',2);  --5 dept ID
INSERT INTO DEPARTMENT (department_name, location_id) values('Frozen',2);  --6
INSERT INTO DEPARTMENT (department_name, location_id) values('GM',2);   --7
INSERT INTO DEPARTMENT (department_name, location_id) values('Grocery',2);  --8


INSERT INTO CATEGORY (category_name, department_id) values ('Cheese',5);   --10 category_id
INSERT INTO CATEGORY (category_name, department_id) values ('Cream or Creamer',5); --11
INSERT INTO CATEGORY (category_name, department_id) values ('Cultured',5);  --12
INSERT INTO CATEGORY (category_name, department_id) values ('Refrigerated Baking',5); --13

INSERT INTO CATEGORY (category_name, department_id) values ('Frozen Bake',6);  --14
INSERT INTO CATEGORY (category_name, department_id) values ('Frozen Breakfast',6);  --15
INSERT INTO CATEGORY (category_name, department_id) values ('Frozen Desserts or Fruit and Toppings',6); --16
INSERT INTO CATEGORY (category_name, department_id) values ('Frozen Juice',6);  --17

INSERT INTO CATEGORY (category_name, department_id) values ('Audio Video',7); --18
INSERT INTO CATEGORY (category_name, department_id) values ('Housewares',7);  --19
INSERT INTO CATEGORY (category_name, department_id) values ('Insect and Rodent',7);  --20
INSERT INTO CATEGORY (category_name, department_id) values ('Kitchen Accessories',7);  --21
INSERT INTO CATEGORY (category_name, department_id) values ('Laundry',7);  --22

INSERT INTO CATEGORY (category_name, department_id) values ('Baking Ingredients',8); --23
INSERT INTO CATEGORY (category_name, department_id) values ('Spices',8);  --24
INSERT INTO CATEGORY (category_name, department_id) values ('Stuffing Products',8); --25


INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Cheese Sauce',10);   --21 inserted sub_category_id
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Specialty Cheese',10); 
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Dairy Alternative Creamer',11);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Whipping Creams',11);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Cottage Cheese',12);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Refrigerated Breads',13);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Refrigerated English Muffins and Biscuits',13);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Refrigerated Hand Held Sweets',13);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Refrigerated Pie Crust',13);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Refrigerated Sweet Breakfast Baked Goods',13);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Bread or Dough Products Frozen',14);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Breakfast Cake or Sweet Roll Frozen',14);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Frozen Breakfast Entrees',15);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Frozen Breakfast Sandwich',15);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Frozen Egg Substitutes',15);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Frozen Syrup Carriers',15);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Pies Frozen',16);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Frozen Apple Juice',17);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Frozen Fruit Drink Mixers',17);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Frozen Fruit Juice All Other',17);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Audio',18);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Video DVD',18);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Video VHS',18);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Bedding',19);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Candles',19);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Collectibles and Gifts',19);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Flashlights',19);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Frames',19);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Indoor Repellants or Traps',20);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Outdoor Repellants or Traps',20);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Kitchen Accessories',21);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Bleach Liquid',22);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Bleach Powder',22);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Fabric Softener Liquid',22);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Fabric Softener Sheets',22);
I
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Dry or Canned Milk',23);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Food Coloring',23);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Salt Cooking or Edible or Seasoned',24);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Salt Substitute',24);
INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Seasoning Dry',24);

INSERT INTO SUB_CATEGORY (sub_category_name, category_id) values ('Stuffing Products',25);


---------------------------------------------------------------
-- SKU data
----------------------------------------------------------

INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 1',	1,1,1,1 );
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 2',	1,2,3,9 );
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 3',	1,3,5,12);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 4',	1,2,4,10);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 5',	2,6,14,31);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 6',	2,8,9,16 );
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 7',	2,7,18,41);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 8',	2,7,18,42);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 9',	1,7,19,44);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 10',1,4,8,15);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 11',1,4,9,16);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 12',1,4,9,17);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 13',1,4,9,18);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 14',1,1,1,1 );
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 15',1,2,3,9 );
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 16',1,3,5,12);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 17',1,2,4,10);
INSERT INTO retail(sku_description, location_id, department_id, category_id, sub_category_id) VALUES ('SKU DESC 18',2,6,14,31);
        











