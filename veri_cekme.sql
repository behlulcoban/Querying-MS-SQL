SELECT O.ID, O.DATE_ ORDERDATE, U.USERNAME_, U.NAMESURNAME,U.EMAIL, A.POSTALCODE, A.ADDRESSTEXT,
C.COUNTRY, CT.CITY, T.TOWN, D.DISTRICT, 
OD.AMOUNT, OD.UNITPRICE,OD.LINETOTAL,
I.ITEMCODE, I.ITEMNAME

FROM ORDERS O
JOIN USERS U ON U.ID = O.USERID
JOIN ADDRESS A ON A.ID = O.ADDRESSID
JOIN COUNTRIES C ON C.ID = A.COUNTRYID
JOIN CITIES CT ON CT.ID = A.CITYID
JOIN TOWNS T ON T.ID = A.TOWNID
JOIN DISTRICTS D ON D.ID = A.DISTRICTID
JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
JOIN ITEMS I ON I.ID = OD.ITEMID
WHERE O.ID = 1