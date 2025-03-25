CREATE DEFINER=`root`@`localhost` PROCEDURE `inout`(inout  count int )
BEGIN
   set count = count +1;
END