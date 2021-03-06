if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblOrder_tblAddress]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblOrder] DROP CONSTRAINT FK_tblOrder_tblAddress
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblUser_tblAddress]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblUser] DROP CONSTRAINT FK_tblUser_tblAddress
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblProductAttribute_tblAttributes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblProductAttribute] DROP CONSTRAINT FK_tblProductAttribute_tblAttributes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblProduct_tblBrand]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblProduct] DROP CONSTRAINT FK_tblProduct_tblBrand
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblProduct_tblCategory]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblProduct] DROP CONSTRAINT FK_tblProduct_tblCategory
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblAddress_tblCity]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblAddress] DROP CONSTRAINT FK_tblAddress_tblCity
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCity_tblCityType]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCity] DROP CONSTRAINT FK_tblCity_tblCityType
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblAddress_tblCountry]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblAddress] DROP CONSTRAINT FK_tblAddress_tblCountry
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblState_tblCountry]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblState] DROP CONSTRAINT FK_tblState_tblCountry
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblOrderDetails_tblOrder]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblOrderDetails] DROP CONSTRAINT FK_tblOrderDetails_tblOrder
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblOrder_tblOrderStatus]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblOrder] DROP CONSTRAINT FK_tblOrder_tblOrderStatus
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblOffers_tblProduct]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblOffers] DROP CONSTRAINT FK_tblOffers_tblProduct
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblOrderDetails_tblProduct]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblOrderDetails] DROP CONSTRAINT FK_tblOrderDetails_tblProduct
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblProductAttribute_tblProduct]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblProductAttribute] DROP CONSTRAINT FK_tblProductAttribute_tblProduct
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblShoppingCart_tblProduct]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblShoppingCart] DROP CONSTRAINT FK_tblShoppingCart_tblProduct
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblWishlist_tblProduct]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblWishlist] DROP CONSTRAINT FK_tblWishlist_tblProduct
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblProduct_tblProductType]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblProduct] DROP CONSTRAINT FK_tblProduct_tblProductType
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblProduct_tblRating]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblProduct] DROP CONSTRAINT FK_tblProduct_tblRating
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblUserAccount_tblRole]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblUserAccount] DROP CONSTRAINT FK_tblUserAccount_tblRole
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblAddress_tblState]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblAddress] DROP CONSTRAINT FK_tblAddress_tblState
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblCity_tblState]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblCity] DROP CONSTRAINT FK_tblCity_tblState
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblOrder_tblUser]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblOrder] DROP CONSTRAINT FK_tblOrder_tblUser
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblWishlist_tblUser]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblWishlist] DROP CONSTRAINT FK_tblWishlist_tblUser
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tblUser_tblUserAccount]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tblUser] DROP CONSTRAINT FK_tblUser_tblUserAccount
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[a]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[a]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[getCustId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[getCustId]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[getQuestion]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[getQuestion]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[j]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[j]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ord]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ord]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[shpshopentervalues]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[shpshopentervalues]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sortbycustnameasc]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sortbycustnameasc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sortbycustnamedesc]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sortbycustnamedesc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sortbyorderdateasc]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sortbyorderdateasc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sortbyorderdatedesc]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sortbyorderdatedesc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sortbyordernoasc]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sortbyordernoasc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sortbyordernodesc]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sortbyordernodesc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spAllBrands]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spAllBrands]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spBrand]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spBrand]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spBrandName]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spBrandName]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spBrandNameNew]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spBrandNameNew]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spBrandProductName]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spBrandProductName]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spCartProducts]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spCartProducts]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spChangeAccDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spChangeAccDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spChangeDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spChangeDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spCity]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spCity]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spCountry]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spCountry]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spDeactiveShpCart]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDeactiveShpCart]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spDeleteCartlogout]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDeleteCartlogout]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spDeleteCategory]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDeleteCategory]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spDeleteOrder]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDeleteOrder]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spDeleteProduct]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDeleteProduct]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spDeleteUserByUserID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spDeleteUserByUserID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spFindPassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spFindPassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spForgotPassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spForgotPassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGallery]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGallery]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetALLCategories]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetALLCategories]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetALLUsers]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetALLUsers]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetAllBrands]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetAllBrands]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetAllCities]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetAllCities]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetAllCitiesByStateID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetAllCitiesByStateID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetAllStates]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetAllStates]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetAllStatesByCountryID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetAllStatesByCountryID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetAllTypes]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetAllTypes]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetBrandBYBrandID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetBrandBYBrandID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetBrandName]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetBrandName]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetCartItems]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetCartItems]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetCartTotal]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetCartTotal]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetCategoriesBYCategoryID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetCategoriesBYCategoryID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetCategoryName]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetCategoryName]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetCustId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetCustId]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetOffer]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetOffer]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetPopularBrands]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetPopularBrands]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetPopularCategories]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetPopularCategories]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetProductbyproductId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetProductbyproductId]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetProducts]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetProducts]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetProductsByBrandID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetProductsByBrandID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetProductsByCategoryId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetProductsByCategoryId]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetProductsByID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetProductsByID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetRoleByUsername]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetRoleByUsername]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetShopingCart]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetShopingCart]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetUserBYUserID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetUserBYUserID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spGetWishList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spGetWishList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spInsertAddress]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsertAddress]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spInsertAddressV2]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsertAddressV2]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spInsertNewBrand]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsertNewBrand]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spInsertNewCategories]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsertNewCategories]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spInsertNewProduct]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsertNewProduct]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spInsertWishList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spInsertWishList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spLogin]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spLogin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spLoginDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spLoginDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spOffer]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spOffer]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spPassworddetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spPassworddetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spPricebyProductID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spPricebyProductID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spProductAttribute]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spProductAttribute]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spProductDesc]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spProductDesc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spProductFeatures]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spProductFeatures]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spProductnameImage]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spProductnameImage]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spQuantity]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spQuantity]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRatenow]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRatenow]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRating]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRating]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRegistration]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRegistration]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRemoveCart]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRemoveCart]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRemoveFromWishList]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRemoveFromWishList]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRetrieveOrderDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRetrieveOrderDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRetrieveOrderStatus]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRetrieveOrderStatus]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spRetrievePassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spRetrievePassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spShpRemoveCartitem]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spShpRemoveCartitem]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spState]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spState]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdateAccDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdateAccDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdateBrand]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdateBrand]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdateCart]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdateCart]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdateCategory]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdateCategory]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdateDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdateDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdatePassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdatePassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdateProduct]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdateProduct]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUpdateUserDetails]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUpdateUserDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spUserPwd]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spUserPwd]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spWishCustomer]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spWishCustomer]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spadmincancel]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spadmincancel]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spadmindelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spadmindelete]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spchkavail]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spchkavail]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spdeletebrand]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spdeletebrand]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spfilterbydate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spfilterbydate]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spfilterbyname]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spfilterbyname]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spfilterbyorderamnt]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spfilterbyorderamnt]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spfilterbyorderno]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spfilterbyorderno]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spfilterbystatus]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spfilterbystatus]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spgetadminorder]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spgetadminorder]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spinsertintoshoppingcart]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spinsertintoshoppingcart]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spinsertintoshoppingcartNew]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spinsertintoshoppingcartNew]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spinsertorder]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spinsertorder]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spshoppingcartitems]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spshoppingcartitems]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spupdateacc]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spupdateacc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spupdateacctest]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spupdateacctest]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spupdateadminorder]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spupdateadminorder]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[spvFindPassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[spvFindPassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[test]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[test]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[testn]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[testn]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vipin]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[vipin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblAddress]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblAddress]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblAttributes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblAttributes]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblBrand]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblBrand]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCategory]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCategory]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCity]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCity]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCityType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCityType]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblCountry]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCountry]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblFAQ]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblFAQ]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblOffers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblOffers]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblOrder]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblOrder]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblOrderDetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblOrderDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblOrderStatus]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblOrderStatus]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblProduct]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblProduct]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblProductAttribute]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblProductAttribute]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblProductType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblProductType]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblRating]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblRating]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblRole]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblRole]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblShoppingCart]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblShoppingCart]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblState]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblState]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblUser]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblUser]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblUserAccount]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblUserAccount]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblWishlist]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblWishlist]
GO

CREATE TABLE [dbo].[tblAddress] (
	[Address] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CityId] [bigint] NOT NULL ,
	[StateId] [bigint] NOT NULL ,
	[CountryId] [bigint] NOT NULL ,
	[ZipCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL ,
	[AddressId] [bigint] IDENTITY (1, 1) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblAttributes] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[AttributeName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[AttributeValue] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblBrand] (
	[Id] [int] IDENTITY (1, 1) NOT NULL ,
	[BrandName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Logo] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Description] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblCategory] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Image] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblCity] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[StateID] [bigint] NOT NULL ,
	[CityTypeID] [tinyint] NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblCityType] (
	[Id] [tinyint] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblCountry] (
	[ID] [bigint] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblFAQ] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[Question] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Answer] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblOffers] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[ProductId] [bigint] NOT NULL ,
	[OfferPrice] [float] NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL ,
	[OfferStartDate] [datetime] NULL ,
	[OfferEndDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblOrder] (
	[OrderId] [bigint] IDENTITY (1, 1) NOT NULL ,
	[CustomerId] [bigint] NOT NULL ,
	[OrderDate] [datetime] NOT NULL ,
	[OrderAmount] [float] NOT NULL ,
	[Discount] [float] NULL ,
	[ShippingAmount] [float] NOT NULL ,
	[TaxAmount] [float] NOT NULL ,
	[NetAmount] [float] NOT NULL ,
	[ShippingDate] [datetime] NOT NULL ,
	[ShippingAddressID] [bigint] NOT NULL ,
	[BillingAddressID] [bigint] NOT NULL ,
	[StatusID] [tinyint] NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblOrderDetails] (
	[OrderId] [bigint] NOT NULL ,
	[ProductId] [bigint] NOT NULL ,
	[ProductPrice] [float] NOT NULL ,
	[Quantity] [bigint] NOT NULL ,
	[Discount] [float] NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblOrderStatus] (
	[Id] [tinyint] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblProduct] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PurchasePrice] [float] NOT NULL ,
	[SalePrice] [float] NOT NULL ,
	[BrandId] [int] NOT NULL ,
	[CategoryId] [bigint] NOT NULL ,
	[TypeId] [int] NOT NULL ,
	[Quantity] [bigint] NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RatingId] [bigint] NOT NULL ,
	[Active] [bit] NOT NULL ,
	[Image] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblProductAttribute] (
	[ProductId] [bigint] NOT NULL ,
	[AttributeId] [bigint] NOT NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblProductType] (
	[Id] [int] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblRating] (
	[Id] [bigint] IDENTITY (0, 1) NOT NULL ,
	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Image] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblRole] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[Role] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblShoppingCart] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[SessionId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Date] [datetime] NOT NULL ,
	[ProductId] [bigint] NOT NULL ,
	[Quantity] [bigint] NOT NULL ,
	[Price] [float] NOT NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblState] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CountryId] [bigint] NOT NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblUser] (
	[UserId] [bigint] IDENTITY (1, 1) NOT NULL ,
	[FName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DOB] [datetime] NULL ,
	[ContactNo] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Gender] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[AccountId] [bigint] NULL ,
	[EmailID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[AddressID] [bigint] NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblUserAccount] (
	[Id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[UserName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Password] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[HintQuestion] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Answer] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RoleId] [bigint] NOT NULL ,
	[Description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Active] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblWishlist] (
	[CustomerId] [bigint] NULL ,
	[ID] [bigint] IDENTITY (1, 1) NOT NULL ,
	[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ProductId] [bigint] NULL ,
	[InsertDate] [datetime] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblAddress] ADD 
	CONSTRAINT [DF_tblAddress_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblAddress] PRIMARY KEY  CLUSTERED 
	(
		[AddressId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblAttributes] ADD 
	CONSTRAINT [DF_tblAttributes_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblAttributes] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblBrand] ADD 
	CONSTRAINT [DF_Brand_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_Brand] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblCategory] ADD 
	CONSTRAINT [DF_tblCategory_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_Category] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblCity] ADD 
	CONSTRAINT [DF_tblCity_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblcity] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblCityType] ADD 
	CONSTRAINT [DF_tblCityType_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblcitytype] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblCountry] ADD 
	CONSTRAINT [DF_tblCountry_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblCountry] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblFAQ] ADD 
	CONSTRAINT [DF_tblFAQ_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblFAQ] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblOffers] ADD 
	CONSTRAINT [DF_tblOffers_OfferPrice] DEFAULT (0) FOR [OfferPrice],
	CONSTRAINT [DF_tblOffers_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblOffers] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblOrder] ADD 
	CONSTRAINT [DF_tblOrder_OrderAmount] DEFAULT (0) FOR [OrderAmount],
	CONSTRAINT [DF_tblOrder_Discount] DEFAULT (0) FOR [Discount],
	CONSTRAINT [DF_tblOrder_ShippingAmount] DEFAULT (10) FOR [ShippingAmount],
	CONSTRAINT [DF_tblOrder_TaxAmount] DEFAULT (0) FOR [TaxAmount],
	CONSTRAINT [DF_tblOrder_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblOrder] PRIMARY KEY  CLUSTERED 
	(
		[OrderId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblOrderDetails] ADD 
	CONSTRAINT [DF_tblOrderDetails_Active] DEFAULT (1) FOR [Active]
GO

ALTER TABLE [dbo].[tblOrderStatus] ADD 
	CONSTRAINT [DF_tblorderstatus_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblorderstatus] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblProduct] ADD 
	CONSTRAINT [DF_Product_PurchasePrice] DEFAULT (0) FOR [PurchasePrice],
	CONSTRAINT [DF_Product_SalePrice] DEFAULT (0) FOR [SalePrice],
	CONSTRAINT [DF_tblProduct_TypeId] DEFAULT (1) FOR [TypeId],
	CONSTRAINT [DF_Product_Quantity] DEFAULT (0) FOR [Quantity],
	CONSTRAINT [DF_Product_Description] DEFAULT (N'No discription') FOR [Description],
	CONSTRAINT [DF_tblProduct_RatingId] DEFAULT (3) FOR [RatingId],
	CONSTRAINT [DF_tblProduct_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [DF__tblproduc__Image__4589517F] DEFAULT ('Na.jpg') FOR [Image],
	CONSTRAINT [PK_Product] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblProductAttribute] ADD 
	CONSTRAINT [DF_tblProductAttribute_Active] DEFAULT (1) FOR [Active]
GO

ALTER TABLE [dbo].[tblProductType] ADD 
	CONSTRAINT [DF_tblProductType_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_type] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblRating] ADD 
	CONSTRAINT [DF_tblRating_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_Rating] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblRole] ADD 
	CONSTRAINT [DF_tblRole_Description] DEFAULT (N'No Discription') FOR [Description],
	CONSTRAINT [DF_tblRole_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblRole] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblShoppingCart] ADD 
	CONSTRAINT [DF_tblShoppingCart_Quantity] DEFAULT (1) FOR [Quantity],
	CONSTRAINT [DF_tblShoppingCart_Price] DEFAULT (0) FOR [Price],
	CONSTRAINT [DF_tblShoppingCart_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblShoppingCard] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblState] ADD 
	CONSTRAINT [DF_tblState_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblstate] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblUser] ADD 
	CONSTRAINT [DF_tblUser_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblUser] PRIMARY KEY  CLUSTERED 
	(
		[UserId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblUserAccount] ADD 
	CONSTRAINT [DF_tblUserAccount_Active] DEFAULT (1) FOR [Active],
	CONSTRAINT [PK_tblUserAccount] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] ,
	CONSTRAINT [IX_tblUserAccount] UNIQUE  NONCLUSTERED 
	(
		[UserName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblWishlist] ADD 
	CONSTRAINT [PK_tblWishlist] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tblAddress] ADD 
	CONSTRAINT [FK_tblAddress_tblCity] FOREIGN KEY 
	(
		[CityId]
	) REFERENCES [dbo].[tblCity] (
		[Id]
	),
	CONSTRAINT [FK_tblAddress_tblCountry] FOREIGN KEY 
	(
		[CountryId]
	) REFERENCES [dbo].[tblCountry] (
		[ID]
	),
	CONSTRAINT [FK_tblAddress_tblState] FOREIGN KEY 
	(
		[StateId]
	) REFERENCES [dbo].[tblState] (
		[Id]
	)
GO

ALTER TABLE [dbo].[tblCity] ADD 
	CONSTRAINT [FK_tblCity_tblCityType] FOREIGN KEY 
	(
		[CityTypeID]
	) REFERENCES [dbo].[tblCityType] (
		[Id]
	),
	CONSTRAINT [FK_tblCity_tblState] FOREIGN KEY 
	(
		[StateID]
	) REFERENCES [dbo].[tblState] (
		[Id]
	)
GO

ALTER TABLE [dbo].[tblOffers] ADD 
	CONSTRAINT [FK_tblOffers_tblProduct] FOREIGN KEY 
	(
		[ProductId]
	) REFERENCES [dbo].[tblProduct] (
		[Id]
	)
GO

ALTER TABLE [dbo].[tblOrder] ADD 
	CONSTRAINT [FK_tblOrder_tblAddress] FOREIGN KEY 
	(
		[ShippingAddressID]
	) REFERENCES [dbo].[tblAddress] (
		[AddressId]
	),
	CONSTRAINT [FK_tblOrder_tblOrderStatus] FOREIGN KEY 
	(
		[StatusID]
	) REFERENCES [dbo].[tblOrderStatus] (
		[Id]
	),
	CONSTRAINT [FK_tblOrder_tblUser] FOREIGN KEY 
	(
		[CustomerId]
	) REFERENCES [dbo].[tblUser] (
		[UserId]
	)
GO

ALTER TABLE [dbo].[tblOrderDetails] ADD 
	CONSTRAINT [FK_tblOrderDetails_tblOrder] FOREIGN KEY 
	(
		[OrderId]
	) REFERENCES [dbo].[tblOrder] (
		[OrderId]
	),
	CONSTRAINT [FK_tblOrderDetails_tblProduct] FOREIGN KEY 
	(
		[ProductId]
	) REFERENCES [dbo].[tblProduct] (
		[Id]
	)
GO

ALTER TABLE [dbo].[tblProduct] ADD 
	CONSTRAINT [FK_tblProduct_tblBrand] FOREIGN KEY 
	(
		[BrandId]
	) REFERENCES [dbo].[tblBrand] (
		[Id]
	),
	CONSTRAINT [FK_tblProduct_tblCategory] FOREIGN KEY 
	(
		[CategoryId]
	) REFERENCES [dbo].[tblCategory] (
		[Id]
	),
	CONSTRAINT [FK_tblProduct_tblProductType] FOREIGN KEY 
	(
		[TypeId]
	) REFERENCES [dbo].[tblProductType] (
		[Id]
	),
	CONSTRAINT [FK_tblProduct_tblRating] FOREIGN KEY 
	(
		[RatingId]
	) REFERENCES [dbo].[tblRating] (
		[Id]
	)
GO

ALTER TABLE [dbo].[tblProductAttribute] ADD 
	CONSTRAINT [FK_tblProductAttribute_tblAttributes] FOREIGN KEY 
	(
		[AttributeId]
	) REFERENCES [dbo].[tblAttributes] (
		[Id]
	),
	CONSTRAINT [FK_tblProductAttribute_tblProduct] FOREIGN KEY 
	(
		[ProductId]
	) REFERENCES [dbo].[tblProduct] (
		[Id]
	)
GO

ALTER TABLE [dbo].[tblShoppingCart] ADD 
	CONSTRAINT [FK_tblShoppingCart_tblProduct] FOREIGN KEY 
	(
		[ProductId]
	) REFERENCES [dbo].[tblProduct] (
		[Id]
	)
GO

ALTER TABLE [dbo].[tblState] ADD 
	CONSTRAINT [FK_tblState_tblCountry] FOREIGN KEY 
	(
		[CountryId]
	) REFERENCES [dbo].[tblCountry] (
		[ID]
	)
GO

ALTER TABLE [dbo].[tblUser] ADD 
	CONSTRAINT [FK_tblUser_tblAddress] FOREIGN KEY 
	(
		[AddressID]
	) REFERENCES [dbo].[tblAddress] (
		[AddressId]
	),
	CONSTRAINT [FK_tblUser_tblUserAccount] FOREIGN KEY 
	(
		[AccountId]
	) REFERENCES [dbo].[tblUserAccount] (
		[Id]
	)
GO

ALTER TABLE [dbo].[tblUserAccount] ADD 
	CONSTRAINT [FK_tblUserAccount_tblRole] FOREIGN KEY 
	(
		[RoleId]
	) REFERENCES [dbo].[tblRole] (
		[Id]
	)
GO

ALTER TABLE [dbo].[tblWishlist] ADD 
	CONSTRAINT [FK_tblWishlist_tblProduct] FOREIGN KEY 
	(
		[ProductId]
	) REFERENCES [dbo].[tblProduct] (
		[Id]
	),
	CONSTRAINT [FK_tblWishlist_tblUser] FOREIGN KEY 
	(
		[CustomerId]
	) REFERENCES [dbo].[tblUser] (
		[UserId]
	)
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure a (@username varchar(50))
as
declare
@b bigint
set @b=(select id from tbluseraccount where Username=@username)
print @b


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create proc getCustId(@username nvarchar(50), @customerid bigint output)
as
Begin
set @customerid = (select [Id] from tblUserAccount where [UserName]=@username)
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create procedure getQuestion
 as
 select UserName,HintQuestion from
  tblUserAccount where Active=1



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc j
as
declare
@i bigint
begin

set @i=(select count(*) from tblshoppingcart where sessionid='qyviwe55lxykgue54yahfavr')

while @i>0
begin
insert into tblorderdetails(OrderId,ProductId,ProductPrice,Quantity)
values(1,6,750,2)
set @i=@i-1
end
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc ord
as
declare
@datediff varchar(60)
Begin
 set @datediff =(select datediff(dd,OrderDate,ShippingDate)from tblorder where orderid=3)
if @datediff>7
print'delivered if not received call 123456'
else
print'accepted'

end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure shpshopentervalues
@ProID bigint ,@ProPrice decimal,@ProQty bigint,@ProActive bit
as
Begin
insert into tblShoppingCart values(1,1,@ProId,@Proprice,@ProQty,@ProActive)
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc sortbycustnameasc  
as  
select OrderId,  
OrderDate,  
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',  
isnull(NetAmount,0)'NetAmount',  
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description   
from tblorder          
where active=1 order by UserName  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc sortbycustnamedesc  
as  
select OrderId,  
OrderDate,  
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',  
isnull(NetAmount,0)'NetAmount',  
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description   
from tblorder          
where active=1 order by UserName desc  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc sortbyorderdateasc  
as  
select OrderId,  
OrderDate,  
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',  
isnull(NetAmount,0)'NetAmount',  
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description   
from tblorder          
where active=1 order by OrderDate  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc sortbyorderdatedesc  
as  
select OrderId,  
OrderDate,  
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',  
isnull(NetAmount,0)'NetAmount',  
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description   
from tblorder          
where active=1 order by OrderDate desc  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc sortbyordernoasc  
as  
select OrderId,  
OrderDate,  
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',  
isnull(NetAmount,0)'NetAmount',  
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description   
from tblorder          
where active=1 order by orderId  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc sortbyordernodesc  
as  
select OrderId,  
OrderDate,  
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',  
isnull(NetAmount,0)'NetAmount',  
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description   
from tblorder          
where active=1 order by orderId desc  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spAllBrands
As
Begin
Set NoCount ON
Select BrandName,Logo,[Description] from tblBrand
where [Active]=1
End



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spBrand
as
begin 
set nocount on
select BrandName,Id from tblBrand where Active=1
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spBrandName    
(@ProductID bigint)    
as    
begin    
select cast(isnull([BrandName],'')as nvarchar)as BrandName ,cast(isnull([salePrice],0)as nvarchar)as SalePrice    
from tblProduct,tblBrand where tblproduct.[Active]=1 and tblProduct.BrandId=tblBrand.Id  and 
tblProduct.Id=@ProductID
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spBrandNameNew
(@BrandID bigint)    
as    
begin    
select cast(isnull(b.[BrandName],'')as nvarchar),cast(isnull(p.[salePrice],0)as nvarchar)    
from tblProduct p,tblBrand b where p.[Active]=1 and p.[BrandId]=b.[Id]   
and  b.Id=@BrandID
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spBrandProductName
(@ProductID bigint)
as
begin

select [Name],[SalePrice],tblProduct.[Description],[Image],[BrandName],[Logo]
from tblProduct,tblBrand where tblproduct.[Active]=1 and tblProduct.BrandId=tblBrand.Id 

end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spCartProducts
(@SessionId nvarchar(50))
as
Begin
Select p.Id,s.SessionId ,s.Quantity,s.Price,p.Name,p.Image,s.Quantity*s.Price as Total
from tblShoppingCart s,tblProduct p
where s.ProductId=p.Id 
and s.Active=1
and s.SessionId=@SessionId
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spChangeAccDetails(@User nvarchar(50))
as
begin
select Fname,Lname,DOB,Gender,ContactNo,EmailID,ZipCode,
UserName,Address,u.AddressID,c.Id "CityId",c.Name "Cityname",
d.Id "StateId",d.Name "StateName",e.ID "CountryId",
e.Name "CountryName",s.Password,s.HintQuestion,s.Answer from
tbluser u,tbluseraccount s,tblAddress a,
tblCity c,tblState d,tblCountry e
where s.UserName=@User 
and u.AccountId=s.id and u.AddressID=a.AddressId
and a.CityId=c.Id
and a.StateId=d.Id
and a.CountryId=e.ID
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spChangeDetails(@User nvarchar(50))  
as  
begin  
select Fname,Lname,DOB,Gender,ContactNo,EmailID,ZipCode,  
UserName,
HintQuestion,Answer,
Address,u.AddressID,c.Id "CityId",c.Name "Cityname",  
d.Id "StateId",d.Name "StateName",e.ID "CountryId",  
e.Name "CountryName"from  
tbluser u,tbluseraccount s,tblAddress a,  
tblCity c,tblState d,tblCountry e  
where s.UserName=@User   
and u.AccountId=s.id and u.AddressID=a.AddressId  
and a.CityId=c.Id  
and a.StateId=d.Id  
and a.CountryId=e.ID  
end  
  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spCity(@statename nvarchar(20))
as
Declare
@StateId bigint
Begin
set @StateId= (select Id from tblState where Name=@statename)
Select Name,Id from tblCity where StateID=@StateId
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spCountry
as
Begin
Select Name,ID from tblCountry Where Active=1
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spDeactiveShpCart
(@ProductId int,@SessionId varchar)
as
begin
set nocount on
update tblShoppingCart
set Active=0 where(ProductId=@ProductId and SessionId=@SessionId)
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE  procedure spDeleteCartlogout(@sessionId nvarchar(50))
as
Delete from tblShoppingCart where SessionId=@sessionId


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spDeleteCategory
@catid int
as
begin
Update tblcategory 
set Active=0
Where [ID]=@catid And Active=1
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure spDeleteOrder
(@OrderId bigint)
As
Declare
@Status bigint
Begin
Set @Status=(Select StatusID from tblOrder
             where OrderId=@OrderId)
Update tblOrder
set [Active]=0
where OrderId=@OrderId
Update tblOrderDetails
set [Active]=0
where OrderId=@OrderId
Update tblOrderStatus
set [Active]=0
where Id=@Status
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spDeleteProduct    
@Id int    
as    
begin 
set nocount on   
Update tblProduct   
set Active=0    
Where [Id]=@Id And Active=1    
end  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spDeleteUserByUserID    
(    
@UserID int  
)    
as    
Declare @AID bigint,@AccountID bigInt,@ErrorCode int    
begin    
Begin Tran   
Select @AID=AddressID,@AccountID=AccountID from  tbluser where UserID=@UserID  
Select @ErrorCode=@@ERROR    
if @ErrorCode<>0 Goto Error  

Delete From tbluser where UserID=@UserID   
Select @ErrorCode=@@ERROR    
if @ErrorCode<>0 Goto Error  

Delete From tblUserAccount where [ID]=@AccountID   
Select @ErrorCode=@@ERROR    
if @ErrorCode<>0 Goto Error  
  
Delete From tblAddress Where AddressID=@AID  
Select @ErrorCode=@@ERROR    
if @ErrorCode<>0 Goto Error    
  
Commit Tran    
Error:    
if @ErrorCode<>0    
Begin    
 Print 'Transaction Failed'    
 RollBack Tran    
End    
End   


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spFindPassword(@answer nvarchar(15),@username varchar(15))
as
Begin
select [Password] from tblUserAccount 
where Answer=@answer and Active=1 and UserName=@username
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc spForgotPassword(@username nvarchar(15))
as
Begin
select [HintQuestion] from tblUserAccount 
where UserName=@username and Active=1
end

exec spForgotPassword vipi
select * from tbluser





















































select * from tblUserAccount

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create procedure spGallery
As
Select Name,Description,SalePrice,Image
from tblProduct
where [Active]=1

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spGetALLCategories
AS
Begin
Set NOCOUNT ON
Select [ID],[Name],[Description],[Image] from tblCategory where [Active]=1
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spGetALLUsers  
As  
SELECT isnull(tblAddress.Address,'')'Address', tblAddress.CityId, tblAddress.StateId, tblAddress.CountryId, isnull(tblAddress.ZipCode,'')'Zipcode',   
tblAddress.AddressId, isnull(tblUser.FName,'')'Firstname', isnull(tblUser.LName,'')'Lastname', tblUser.DOB, isnull(tblUser.ContactNo,'')'ContactNo',
tblUser.Gender, tblUser.AccountId,tblUser.EmailID, tblUser.Description, tblUser.UserId, tblCity.Name as 'CityName', 
tblUserAccount.UserName, tblUserAccount.Password, isnull(tblUserAccount.HintQuestion,'')'HintQuestion', isnull(tblUserAccount.Answer,'')'Answer', 
tblUserAccount.RoleId, tblCountry.Name AS 'CountryName',tblState.Name AS 'StateName', tblRole.Role 
FROM tblAddress INNER JOIN tblUser ON tblAddress.AddressId = tblUser.AddressID   
INNER JOIN tblUserAccount ON tblUser.AccountId = tblUserAccount.Id INNER JOIN tblCity ON tblAddress.CityId = tblCity.Id   
INNER JOIN tblCountry ON tblAddress.CountryId = tblCountry.ID INNER JOIN tblState ON tblAddress.StateId = tblState.Id   
AND tblCity.StateID = tblState.Id AND tblCountry.ID = tblState.CountryId INNER JOIN tblRole ON   
tblUserAccount.RoleId = tblRole.Id 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

--use easyware
CREATE Procedure spGetAllBrands
As
Select [Id],[BrandName],isnull([Logo],'na.jpg') as [Logo],isnull([Description],'') as [Description] from tblBrand where [Active]=1

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetAllCities
as
Begin
Select isnull([Name],'')'Name',[Id] from tblCity where [Active]=1
End


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetAllCitiesByStateID
(
	@StateID int
)
as
Begin
Select isnull([Name],'')'Name',[Id] from tblCity where [Active]=1 And [StateID]=@StateID
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetAllStates
as  
select isnull([Name],'')'Name',[Id] from tblState   
where [Active]=1


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetAllStatesByCountryID
(
	@CountryID int
)
as  
select isnull([Name],'')'Name',[Id] from tblState   
where [Active]=1 And [CountryID]=@CountryID



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spGetAllTypes as 
begin
set NOCOUNT on
select [Id],[Name],[Description] from tblProductType where [Active]=1
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spGetBrandBYBrandID  
(  
@BrandID int  
)    
AS    
Begin    
Set NOCOUNT ON    
Select [ID],[BrandName],[Description],[Logo] from tblBrand where [Active]=1  And [ID]=@BrandID  
End  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spGetBrandName
as
begin 
set nocount on
select BrandName,Id from tblBrand where Active=1
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetCartItems
(@SessionId nvarchar(50))  
as  
Begin  
Select isnull(sum(isnull(s.Quantity,0)),0) as Total  
from tblShoppingCart s 
where s.Active=1  
and s.SessionId=@SessionId  
End  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetCartTotal 
(@SessionId nvarchar(50))  
as  
Begin  
Select sum(isnull(s.Quantity,0) * isnull(s.Price,'')) as Total  
from tblShoppingCart s 
where s.Active=1  
and s.SessionId=@SessionId  
End  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spGetCategoriesBYCategoryID
(
@CatID int
)  
AS  
Begin  
Set NOCOUNT ON  
Select [ID],[Name],[Description],[Image] from tblCategory where [Active]=1  And [ID]=@CatID
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spGetCategoryName
as
begin 
set nocount on
select Name,Id from tblcategory where Active=1
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create proc spGetCustId(@username nvarchar(50), @customerid bigint output)
as
Begin
set @customerid = (select [Id] from tblUserAccount where [UserName]=@username)
end



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetOffer
(
@ProductID int
)
As
Begin
set NoCount ON
select tblproduct.[Id],[Name],[SalePrice],tblproduct.[Description],[RatingId],tblproduct.[CategoryID],
[Image],[OfferPrice] from tblproduct,
tbloffers
where tblproduct.[active]=1 and tbloffers.active=1
and tblProduct.[Id]=tbloffers.ProductId and tblProduct.[ID]=@ProductID
End


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure spGetPopularBrands
AS
Begin
Set NOCOUNT ON
Select Top 3 [ID],[BrandName],[Logo],[Description] from tblBrand where [Active]=1
End


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure spGetPopularCategories
AS
Begin
Set NOCOUNT ON
Select Top 3 [ID],[Name],[Description],[Image] from tblCategory where [Active]=1
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create procedure spGetProductbyproductId
(
@ProductID int
)
As
Begin
set NoCount ON
select [Id],[Name],[SalePrice],[Description],[RatingId],[CategoryID],[Image] from tblproduct
where [ID]=@productID and [Active]=1
End



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spGetProducts  
As  
Begin  
Set NoCount ON  
Select p.[Id],p.[Name],b.[BrandName],p.[SalePrice],p.[Description],p.[PurchasePrice],
p.[Quantity],p.[Image] from tblProduct p,tblBrand b
where p.[BrandId]=b.[Id]  
and p.[Active]=1  
End  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spGetProductsByBrandID
(
 @BrandID int
)
As
Begin
Set NoCount ON
Select [Id],[Name],[SalePrice],[Description],[RatingId],[CategoryID],[Image] from tblproduct
where BrandID=@BrandID And [Active]=1
End


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create procedure spGetProductsByCategoryId
(
@CategoryID int
)
As
Begin
set NoCount ON
select [Id],[Name],[SalePrice],[Description],[RatingId],[CategoryID],[Image] from tblproduct
where CategoryID=@CategoryID and [Active]=1
End


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spGetProductsByID  
(  
 @Id int  
)  
As  
Begin  
Set NoCount ON  
Select [Name],[SalePrice],[PurchasePrice],[Description],[Quantity],[Image] from tblproduct  
where [Id]=@Id And [Active]=1  
End  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure spGetRoleByUsername
(
@Username nvarchar(50)
)
As
Select Top 1 [RoleID] From tbluserAccount Where ([Username]=@Username)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetShopingCart
(@sessionID nvarchar(50))
as
begin
set nocount on
select p.name,p.[Image],s.SessionId,s.ProductId,s.price,
s.quantity,(s.quantity)*(s.price) as totalPrice
from tblProduct p,tblShoppingCart s 
where p.[Id]=s.[ProductId]and
 s.[SessionId]=@sessionID and s.active=1
end




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure spGetUserBYUserID
(
@UserID int
)
As
SELECT tblAddress.Address, tblAddress.CityId, tblAddress.StateId, tblAddress.CountryId, tblAddress.ZipCode, 
tblAddress.AddressId, tblUser.FName as 'FirstName', tblUser.LName as 'LastName', tblUser.DOB, tblUser.ContactNo, tblUser.Gender, tblUser.AccountId, 
tblUser.EmailID, tblUser.Description, tblUser.UserId, tblCity.Name as 'CityName', tblUserAccount.UserName, tblUserAccount.Password, 
tblUserAccount.HintQuestion, tblUserAccount.Answer, tblUserAccount.RoleId, tblCountry.Name AS 'CountryName', 
tblState.Name AS 'StateName', tblRole.Role FROM tblAddress INNER JOIN tblUser ON tblAddress.AddressId = tblUser.AddressID 
INNER JOIN tblUserAccount ON tblUser.AccountId = tblUserAccount.Id INNER JOIN tblCity ON tblAddress.CityId = tblCity.Id 
INNER JOIN tblCountry ON tblAddress.CountryId = tblCountry.ID INNER JOIN tblState ON tblAddress.StateId = tblState.Id 
AND tblCity.StateID = tblState.Id AND tblCountry.ID = tblState.CountryId INNER JOIN tblRole ON 
tblUserAccount.RoleId = tblRole.Id Where tblUser.UserId=@UserID

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spGetWishList  
(@username nvarchar(50))  
as  
Begin  
select distinct(w.ProductId) Id,w.CustomerID,p.SalePrice,p.Name,p.Image from tblwishlist w ,tblProduct p
where w.ProductId=p.Id   
and p.Active=1 and w.[Name]=@username 
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spInsertAddress(@firstname nvarchar(20),@lastname nvarchar(20),@Email nvarchar(20),@Gender nvarchar(10),
@contactno nvarchar(20),@Address nvarchar(100),@Country nvarchar(10),@State nvarchar(10),@City nvarchar(10),
@AID  int output,@Cid int output)
AS

declare

@stateid bigint,
@countryid bigint,
@cityid bigint

begin

select @stateid= ( Select Id from tblState
              where Name=@State)
select @countryid = (Select ID from tblCountry
                 where Name=@Country)
select @cityid= (Select Id from tblCity
             where Name=@City)
Insert into tblAddress(Address,CountryId,StateId,CityId)
  Values(@Address,@countryid,@stateid,@cityid)
set @AID=@@IDENTITY


Insert into tblUser(Fname,Lname,EmailID,Gender,ContactNo,AddressId)
 values(@firstname,@lastname,@Email,@Gender,@contactno,@AID)
set @Cid=@@Identity
End
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spInsertAddressV2
(
@firstname nvarchar(20),
@lastname nvarchar(20),
@Email nvarchar(20),
@Gender nvarchar(10),  
@contactno nvarchar(20),
@Address nvarchar(100),
@CountryID int,
@StateID int,
@CityID int,  
@AID  int output,
@Cid int output
)  
AS  
begin  
Insert into tblAddress
(
Address,
CountryId,
StateId,
CityId
)  
Values
(
@Address,
@CountryID,
@StateID,
@CityID
)  
set @AID=@@IDENTITY  
Insert into tblUser
(
Fname,
Lname,
EmailID,
Gender,
ContactNo,
AddressId
)  
values
(
@firstname,
@lastname,
@Email,
@Gender,
@contactno,
@AID
)  
set @Cid=@@Identity  
End


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spInsertNewBrand 
(@BrandName nvarchar(200),@Description nvarchar(1000),@Logo nvarchar(100))  
as  
begin  
set nocount on  
insert into tblBrand([BrandName],[Description],[Logo])  
values(@BrandName,@Description,@Logo)  
end  
 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spInsertNewCategories
(@Name nvarchar(200),@Description nvarchar(1000),@Image nvarchar(100))
as
begin
set nocount on
insert into tblcategory([Name],[Description],[Image])
values(@Name,@Description,@Image)
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spInsertNewProduct(@name nvarchar(50),@PurchasePrice float, @SalePrice float,    
@Quantity bigint,@Description nvarchar(200),@Image nvarchar(100),@BrandId int,@CategoryId int)      
AS    
declare     
@cName nvarchar(200),    
@BrandName nvarchar(200)    
Begin    
set nocount on        
Insert into tblProduct([Name],PurchasePrice,SalePrice,BrandId,CategoryId,Quantity,[Description],[Image])      
Values(@Name,@PurchasePrice,@SalePrice,@BrandId,@CategoryId,@Quantity,@Description,@Image)      
end    

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spInsertWishList(@Uname nvarchar(50),
@ProductId bigint)
as
Declare
@UserId bigint,
@insertdate datetime
Begin
Set @UserId= (Select Id from tblUserAccount a
              where UserName=@Uname)
set @insertdate=getdate()
Insert into tblWishlist(CustomerId,Name,ProductId,InsertDate)
Values(@UserId,@Uname,@ProductId,@insertdate)
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spLogin(@Username nvarchar(50),  
@Password nvarchar(20))  
as  
 
if exists(select * from tbluserAccount  where Username=@Username and Password=@Password and Active=1)  
select * from tbluser where AccountId=(select Id from  tbluserAccount where Username=@Username and Password=@Password and Active=1)  
  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spLoginDetails
	(@username nvarchar(50),@fname nvarchar(50),
	@lname nvarchar(5),@password nvarchar(50),
	@HQuestion nvarchar(100),@Answer nvarchar(100),
	@dob datetime,@No bigint,@gender nvarchar(10),
	@emailId nvarchar(40),@Address nvarchar(100),
	@Country nvarchar(50),
	@state nvarchar(40),@City nvarchar(40),
	@ZipCode varchar(30))

as
begin


insert into tblusers(FName,LName,DOB,ContactNo,Gender,
EmailID) values
(@FName,@lname,@dob,@No,@gender,@emailId)

insert into tblAddress(Address,ZipCode) values(@Address,@ZipCode)

insert into tbluserAccount(username,[Password],HintQuestion,Answer)
values(@username,@password,@HQuestion,@Answer)

insert into tblcity([Name]) values(@city)

insert into tblState([Name]) values(@State)

insert into tblcountry([Name]) values(@Country)

end



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure spOffer
(@ProductID bigint)
As
Begin
Select [OfferPrice] from tblOffers
where ProductId=@ProductID
and Active=1;
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create procedure spPassworddetails
(@Username nvarchar(20))
As
Begin
Select [HintQuestion] from tblUserAccount
where UserName=@Username and Active=1
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create procedure spPricebyProductID     
(@ProductID bigint)      
as      
begin      
select cast(isnull([BrandName],'')as nvarchar)as BrandName ,cast(isnull([salePrice],0)as nvarchar)as SalePrice      
from tblProduct,tblBrand where tblproduct.[Active]=1 and tblProduct.BrandId=tblBrand.Id  and   
tblProduct.Id=@ProductID  
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure spProductAttribute
(@ProductId bigint)
As
Begin
select [AttributeName],[AttributeValue]
from tblAttributes a,tblProductAttribute b
where a.Id=b.AttributeId and
b.ProductId=@ProductId and a.Active=1;
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spProductDesc
(
@ProductID bigint
)
As
Begin
Select tblRating.[Description] "desc",tblRating.[Image] "img"  from tblProduct,tblRating
where tblProduct.[Id]=@ProductID and tblProduct.RatingId=tblRating.Id and  tblProduct.Active=1;
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spProductFeatures
(@ProductID bigint)
as
begin
select [BrandName],[SalePrice],[AttributeName],[AttributeValue] 
from tblProduct a,tblBrand b,tblProductAttribute c,tblAttributes d
where a.BrandId=b.Id and a.Id=c.ProductId and c.AttributeId=d.Id and a.Active=1
and c.ProductId=@ProductID;
end



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create procedure spProductnameImage(
@ProductID bigint
)
As
Begin
Select [Name],[Image] from tblProduct
where Id=@ProductID and Active=1;
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spQuantity    
(@ProductID int,      
@p_sessionId nvarchar(50),      
@p_quantity bigint,      
@p_price float      
)      
as      
if(exists(Select ProductID from tblShoppingCart     
where ProductId=@ProductID And SessionId=@p_sessionId And Active=1))    
 Update tblShoppingCart Set    
 Quantity=Quantity + @p_quantity    
 where ProductId=@ProductID And SessionId=@p_sessionId    
else    
 insert into tblShoppingCart(    
  SessionId,    
  Quantity,    
  Price,    
  ProductId,    
  [Date]    
 )  Values    
 (    
  @p_sessionId,    
  @p_quantity,    
  @p_price,    
  @ProductID,    
  getDate()    
 )    

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spRatenow
(@ProductId int,@RateId int)
As
Declare
@OldRateId  float,
@NewRateId  float
Begin
Set @OldRateId=(Select RatingId from tblProduct
 where Id=@ProductId)
Set @NewRateId=(@RateId + @OldRateId)/2
Update tblProduct
Set RatingId=round(@NewRateId,0)
where Id=@ProductId
End



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure spRating
(@ProductID bigint)
As
Begin
Select a.Name,a.Image
from tblRating a ,tblProduct b
where b.RatingId=a.Id
and b.Id=@ProductID
and b.Active=1;
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spRegistration
(
@username nvarchar(50),
@fname nvarchar(50),
@lname nvarchar(50),
@password nvarchar(50),
@HQuestion nvarchar(100),
@Answer nvarchar(100),
@dob datetime,
@ContactNo nvarchar(20),
@gender nvarchar(10),
@emailId nvarchar(40),
@Address nvarchar(100),
@Country bigINT,
@state bigINT,
@City bigINT,
@ZipCode varchar(30)
)
as
Declare @AID bigint,@AccountID bigInt,@ErrorCode int
begin
Begin Tran
insert into tblAddress(Address,CityID,StateID,CountryID,ZipCode)values
(@Address,@City,@state,@Country,@ZipCode)
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error
Select @AID=@@IDENTITY

insert into tbluserAccount(username,[Password],HintQuestion,Answer,RoleID)
values(@username,@password,@HQuestion,@Answer,7)
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error
Select @AccountID=@@IDENTITY

insert into tbluser(FName,LName,DOB,ContactNo,Gender,EmailID,AccountID,AddressID)values
(@FName,@lname,@dob,@ContactNo,@gender,@emailId,@AccountID,@AID)
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error

Commit Tran

Error:
if @ErrorCode<>0
Begin
	Print 'Transaction Failed'
	RollBack Tran
End
End




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spRemoveCart(@sessionId nvarchar(50),@ProductId bigint)
as
begin
Update tblShoppingCart set Active=0

--delete from tblshoppingcart
where SessionId=@SessionId 
and ProductId=@ProductId;
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure spRemoveFromWishList
(@ProductId bigint)
as
Delete from tblWishList where ProductId=@ProductId

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spRetrieveOrderDetails
(@Username nvarchar(50))
as
Declare
@CustId bigint
Begin
Set @CustId=(Select [id]from tblUserAccount a,tblUser b
             where b.AccountId=a.Id and a.UserName=@Username)

Select c.CustomerId "CustomerId",b.OrderId "OrderId",c.OrderDate "OrderDate",
b.ProductId "ProductId",a.Name "ProductName",a.Image "ProductImage",
b.ProductPrice "Price",b.Quantity "Quantity",c.OrderAmount "OrderAmount",
c.ShippingAmount "ShippingAmount",c.TaxAmount "TaxAmount",
c.NetAmount "NetAmount",d.Description "OrderStatus"
from tblProduct a,tblOrderDetails b,tblOrder c,tblOrderStatus d
where 
b.OrderId=c.OrderId and
c.StatusID=D.Id and 
a.Id=b.ProductId and
c.CustomerId=@CustId
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spRetrieveOrderStatus  
(@Username nvarchar(50),  
@OrderId bigint)  
as  
Declare  
@CustId bigint  
Begin  
Set @CustId=(Select [id]from tblUserAccount a,tblUser b  
             where b.AccountId=a.Id and a.UserName=@Username)  
  
Select c.CustomerId "CustomerId",c.OrderId "OrderId",c.OrderDate "OrderDate",  
c.OrderAmount "OrderAmount",  
c.ShippingAmount "ShippingAmount",c.TaxAmount "TaxAmount",  
c.NetAmount "NetAmount",d.Description "OrderStatus"  
from tblOrder c,tblOrderStatus d  
where   
c.StatusID=D.Id and   
c.CustomerId=@CustId  
and c.OrderId=@OrderId  
End  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create procedure spRetrievePassword
(@UserName nvarchar(20),@Answer nvarchar(50))
as
Begin
 Select Password from tblUserAccount
  where Answer=@Answer and UserName=@UserName
and Active=1
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spShpRemoveCartitem(@sessionId nvarchar(50),@ProductId bigint)
as
begin
Update tblShoppingCart
set Active=0, Quantity=0
where SessionId=@SessionId
and ProductId=@ProductId
end



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spState(@country_name nvarchar(50))
as
Declare
@country_id bigint
Begin
set @country_id= (select [ID] from tblCountry
                 where Name=@country_name)
select [Name],[Id] from tblState 
where CountryId=@country_id
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spUpdateAccDetails
(
@username nvarchar(50),
@fname nvarchar(50),
@lname nvarchar(50),
@password nvarchar(50),
@HQuestion nvarchar(100),
@Answer nvarchar(100),
@dob datetime,
@ContactNo nvarchar(20),
@gender nvarchar(10),
@emailId nvarchar(40),
@Address nvarchar(100),
@Country bigINT,
@state bigINT,
@City bigINT,
@ZipCode varchar(30))
as
Declare
@accountid int,@ErrorCode int,@idUserAccount int,@addressidfromtbluser int
Begin
Begin Tran
Update tblUserAccount set @idUserAccount=[id], [Password]=@password,Answer=@Answer
where [UserName]=@username

Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error

update tbluser set @addressidfromtbluser=AddressID,FName=@fname,LName=@lname,DOB=@dob,ContactNo=@ContactNo,Gender=@gender,EmailID=@emailId 
where tblUser.AccountId =@idUserAccount

Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error

update tblAddress set Address=@Address,CityID=@City,StateID=
@state,CountryID=@Country,ZipCode=@ZipCode
where tblAddress.[AddressId]=@addressidfromtbluser

Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error


Commit Tran

Error:
if @ErrorCode<>0
Begin
	Print 'Transaction Failed'
	RollBack Tran
End
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spUpdateBrand 
(  
@ID int,  
@BrandName nvarchar(200),  
@Description nvarchar(1000),  
@Logo nvarchar(100)  
)  
as  
begin  
set nocount on  
Update tblBrand Set  
[BrandName]=@BrandName,  
[Description]=@Description,  
[Logo]=@Logo  
Where [ID]=@ID And Active=1  
end  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spUpdateCart(@SessionId nvarchar(50),@ProductId bigint,
@quantity int)
as
Begin
Update tblShoppingCart
set Quantity=@quantity
where SessionId=@SessionId 
and ProductId=@ProductId;
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spUpdateCategory
(
@ID int,
@Name nvarchar(200),
@Description nvarchar(1000),
@Image nvarchar(100)
)
as
begin
set nocount on
Update tblcategory Set
[Name]=@Name,
[Description]=@Description,
[Image]=@Image
Where [ID]=@ID And Active=1
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spUpdateDetails  
(    
@username nvarchar(50),    
@fname nvarchar(50),    
@lname nvarchar(50),    
@dob datetime,    
@ContactNo nvarchar(20),    
@gender nvarchar(10),    
@emailId nvarchar(40), 
@HintQuestion nvarchar(40),
@Answer nvarchar(40),   
@Address nvarchar(100),    
@Country bigINT,    
@state bigINT,    
@City bigINT,    
@ZipCode varchar(30)    
)    
as    
Declare   
@b bigint  
begin    
   
 set @b=(select id from tbluseraccount where Username=@username)  
   
update tblAddress set Address=@Address,CityID=@City,StateID=@state,CountryID=@Country,  
 ZipCode=@ZipCode where AddressId=(select AddressID from tbluser where AccountId=@b)  
   
update tbluser set FName=@FName,LName=@lname,DOB=@dob,ContactNo=@ContactNo,Gender=@gender,  
EmailID=@emailId where AccountId=@b  
update tbluseraccount set HintQuestion=@HintQuestion,Answer=@Answer where UserName=@username
End    

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create procedure spUpdatePassword(@user nvarchar(20),
@newpwd nvarchar(20))
As
Begin
Update tblUserAccount
set password=@newpwd
where UserName=@user
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spUpdateProduct   
(    
@ID int,    
@Name nvarchar(200),    
@Description nvarchar(1000),@Quantity bigint,    
@Image nvarchar(100),@PurchasePrice float,@SalePrice float 
)    
as    
begin    
set nocount on    
Update tblProduct Set    
[Name]=@Name,    
[Description]=@Description,    
[Quantity]=@Quantity,
[Image]=@Image,
[PurchasePrice]=@PurchasePrice,
[SalePrice]=@SalePrice    
Where [ID]=@ID And Active=1    
end    

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spUpdateUserDetails  
(  
@username nvarchar(50),  
@fname nvarchar(50),  
@lname nvarchar(50),  
@dob datetime,  
@ContactNo nvarchar(20),  
@gender nvarchar(10),  
@emailId nvarchar(40),  
@Address nvarchar(100),  
@Country bigINT,  
@state bigINT,  
@City bigINT,  
@ZipCode varchar(30),
@AddressID int,
@UserID int
)  
as  
Declare @AID bigint,@AccountID bigInt,@ErrorCode int  
begin  
Begin Tran  
Update tblAddress Set Address=@Address,CityID=@City,StateID=@state,CountryID=@Country,ZipCode=@ZipCode  
Where AddressID=@AddressID
Select @ErrorCode=@@ERROR  
if @ErrorCode<>0 Goto Error  
Update tbluser Set FName=@FName,LName=@lname,DOB=@dob,ContactNo=@ContactNo,Gender=@gender,EmailID=@emailId
Where UserID=@UserID
Select @ErrorCode=@@ERROR  
if @ErrorCode<>0 Goto Error  
Commit Tran  
Error:  
if @ErrorCode<>0  
Begin  
 Print 'Transaction Failed'  
 RollBack Tran  
End  
End 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure spUserPwd
(@Username nvarchar(20),
 @pwd nvarchar(20),
@newpwd nvarchar(20),
@response nvarchar(100) output
)
as
if exists(Select 'X' from tblUserAccount
where UserName=@Username
and Password=@pwd)
Begin
Update tblUserAccount
set password=@newpwd
where UserName=@Username
set @response='Done'
End
else
set @response='Invalid User'

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc spWishCustomer(@wish varchar(30) output)  
as  
Begin  
declare @currhour varchar(10)  
set @currhour = datename(hh,getdate())  
  
if @currhour between 0 and 12  
set @wish ='Good Morning'  
else if @currhour between 12 and 16  
set @wish ='Good AfterNoon'  
else   
set @wish='Go Home Naresh now'  
  
  
--print @currhour  
--print @wish  
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create proc spadmincancel(@orderid bigint)
as
select netamount,description from tblorder,tblorderstatus where orderid=@orderid
and tblorder.statusId=tblorderstatus.id

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create proc spadmindelete(@orderid bigint)
as
update tblorder set active=0 where orderid=@orderid

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc spchkavail (@username nvarchar(15))
as
Begin
set nocount on
select UserName  from tbluseraccount where UserName=@username
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spDeleteBrand  
@BrandId int  
as  
begin  
Update tblBrand   
set Active=0  
Where [ID]=@BrandId And Active=1  
end  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc spfilterbydate(@from datetime,@to datetime)  
as  
select OrderId,
OrderDate,
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',
isnull(NetAmount,0)'NetAmount',
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description 
from tblorder        
where active=1 and OrderDate between @from and @to

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc spfilterbyname(@name varchar(60))  
as  
select OrderId,
OrderDate,
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',
isnull(NetAmount,0)'NetAmount',
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description 
from tblorder        
where active=1 
and tblorder.CustomerId in (Select [Id] from tblUserAccount Where [UserName]=@name)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc spfilterbyorderamnt(@op int,@amnt float)  
as  
if @op=1  
select OrderId,
OrderDate,
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',
isnull(NetAmount,0)'NetAmount',
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description 
from tblorder        
where active=1 and NetAmount<@amnt  


if @op=2  
select OrderId,
OrderDate,
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',
isnull(NetAmount,0)'NetAmount',
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description 
from tblorder        
where active=1 and NetAmount>@amnt  
  
if @op=3  
select OrderId,
OrderDate,
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',
isnull(NetAmount,0)'NetAmount',
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description 
from tblorder        
where active=1 and NetAmount=@amnt  
  
if @op=4  
select OrderId,
OrderDate,
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',
isnull(NetAmount,0)'NetAmount',
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description 
from tblorder        
where active=1 and NetAmount!=@amnt  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc spfilterbyorderno(@orderid int)  
as  
select OrderId,  
OrderDate,  
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',  
isnull(NetAmount,0)'NetAmount',  
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description   
from tblorder          
where active=1 And OrderId=@orderid

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc spfilterbystatus(@status varchar(60))  
as  
select OrderId,  
OrderDate,  
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',  
isnull(NetAmount,0)'NetAmount',  
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description   
from tblorder          
where active=1 
and tblorder.statusid=(Select Top 1 [Id] From tblorderstatus where [Description]=@status)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc spgetadminorder          
as          
select OrderId,
OrderDate,
isnull((Select [UserName] from tblUserAccount WHERE [Id]=tblorder.CustomerId),'NA')'UserName',
isnull(NetAmount,0)'NetAmount',
isnull((Select [Description] from tblorderstatus where [Id]=tblorder.statusid),'') Description 
from tblorder        
where active=1

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spinsertintoshoppingcart
(  
@sessionid nvarchar(50),    
@productid bigint,  
@price bigint,    
@Quantity float  
)  
as  
   
if exists(Select ProductID from tblShoppingCart 
where ProductId=@ProductID And SessionId=@sessionId)
	Update tblShoppingCart Set
	Quantity=Quantity + @Quantity , Active=1
	where ProductId=@ProductID And SessionId=@sessionId
else
insert into tblShoppingCart(SessionId,Quantity,Price,ProductId,[Date])    
values(@sessionId,@Quantity,@price,@productID,getdate()) 
  








GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE  procedure spinsertintoshoppingcartNew  
(  
@sessionid nvarchar(50),    
@productid bigint,  
@NewQty float  

)  
as  
Begin
set nocount on 
update tblShoppingCart set Quantity =@NewQty where SessionId=@sessionid and ProductId=@productid
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spinsertorder(@CustId bigint,@OrderAmnt float,@TaxAmnt float,@NetAmnt float,
@ShipAddrId bigint,@BillAddrId bigint,@SessionId nvarchar(50),@BillFname varchar(50),@OId bigint output)
as
declare

@ErrorCode bigint,
@Statusid bigint

begin
begin tran
insert into tblOrderStatus(Name) values (@BillFname)
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error
select @Statusid=@@Identity

insert into tblorder(CustomerId,OrderDate,OrderAmount,TaxAmount,NetAmount,ShippingDate,
ShippingAddressID,BillingAddressID,StatusiD)
values (@CustId,getdate(),@OrderAmnt,@TaxAmnt,@NetAmnt,dateadd(dd,7,getdate()),
@ShipAddrId,@BillAddrId,@Statusid)


Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error
select @OId=@@Identity

declare b cursor 
for 
Select p.Id ,s.Quantity,s.Price from tblShoppingCart s,tblProduct p  
where s.ProductId=p.Id   
and s.Active=1  
and s.SessionId=@SessionId 
declare
@cpid bigint,@cquantity bigint,@cprice float
open b
	fetch next from b into @cpid,@cquantity,@cprice
	while @@fetch_status=0
	begin
	insert into tblorderdetails(OrderId,ProductId,ProductPrice,Quantity)
	values(@OId,@cpid,@cprice,@cquantity)
	fetch next from b into @cpid,@cquantity,@cprice
end
close b
deallocate b
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error
 
Commit Tran

Error:
if @ErrorCode<>0
Begin
	Print 'Transaction Failed'
	RollBack Tran
End
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spshoppingcartitems
(@Sessionid nvarchar(50),@CartItems bigint output)
as
begin
select @CartItems=sum(quantity) from tblshoppingcart where [Sessionid]=@Sessionid
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spupdateacc
(
@username nvarchar(50),
@fname nvarchar(50),
@lname nvarchar(50),
@password nvarchar(50),
@Answer nvarchar(100),
@dob datetime,
@ContactNo nvarchar(20),
@gender nvarchar(10),
@emailId nvarchar(40),
@Address nvarchar(100),
@Country bigINT,
@state bigINT,
@City bigINT,
@ZipCode varchar(30),
@response nvarchar(100) output

)
as
Declare @idtblUserAccount bigint,@ErrorCode int
begin
Begin Tran

update tbluserAccount set @idtblUserAccount=[id],[Password]=@password,[Answer]=@Answer
where [UserName]=@username
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error


Update tbluser set FName=@FName,LName=@lname,DOB=@dob,ContactNo=@ContactNo,Gender=@gender,EmailID=@emailid
where [AccountId]=@idtblUserAccount
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error

update tblAddress set Address=@Address,CityID=@City,StateID=@state,CountryID=@Country,ZipCode=@ZipCode
where AddressId =(Select AddressId from tblUser where Accountid=@idtblUserAccount)
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error



Commit Tran
set @response='Details Have Been Updated Successfully'

Error:
if @ErrorCode<>0
--set @response='Details Has Not Been Successfully'
Begin
	Print 'Transaction Failed'
	RollBack Tran
End
End

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spupdateacctest
(
@username nvarchar(50),
@fname nvarchar(50),
@lname nvarchar(50),
@password nvarchar(50),
@Answer nvarchar(100),
@dob datetime,
@ContactNo nvarchar(20),
@gender nvarchar(10),
@emailId nvarchar(40),
@Address nvarchar(100),
@Country bigINT,
@state bigINT,
@City bigINT,
@ZipCode varchar(30),
@response nvarchar(100) output

)
as
Declare @idtblUserAccount bigint,@ErrorCode int
begin
Begin Tran

update tbluserAccount set @idtblUserAccount=[id],[Password]=@password,[Answer]=@Answer
where [UserName]=@username
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error


Update tbluser set FName=@FName,LName=@lname,DOB=@dob,ContactNo=@ContactNo,Gender=@gender,EmailID=@emailid
where [AccountId]=@idtblUserAccount
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error

update tblAddress set Address=@Address,CityID=@City,StateID=@state,CountryID=@Country,ZipCode=@ZipCode
where AddressId =(Select AddressId from tblUser where Accountid=@idtblUserAccount)
Select @ErrorCode=@@ERROR
if @ErrorCode<>0 Goto Error



Commit Tran
set @response='Details Have Been Updated Successfully'

Error:
if @ErrorCode<>0
set @response='Details Has Not Been Successfully'
Begin
	Print 'Transaction Failed'
	RollBack Tran
End
End
	
	

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure spupdateadminorder(@amount float,@status nvarchar(100),@OrderId bigint)
as
update tblorder set NetAmount=@amount where
OrderId=@OrderId
update tblorderstatus set description=@status where Id=(select statusid from tblorder where orderId=@OrderId)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure spvFindPassword(@answer nvarchar(15),@username varchar(15))
as
Begin
select ua.[Password], u.[Emailid] from tblUserAccount ua,tblUser u 
where ua.[Answer]=@answer and ua.[Active]=1 and ua.[UserName]=@username
and ua.id=u.accountid
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure test(@Username nvarchar(40),
@response nvarchar(100) output)
as
begin
select @response = convert(char(12),dob,20) from tbluser,tbluseraccount
             where tbluserAccount.Id=tblUser.AccountId
             and tblUserAccount.UserName=@Username
       end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE proc testn(@username nvarchar(15),@password nvarchar(15),
@answer nvarchar(15))
as
begin

Update tblUserAccount set [Password]=@password,Answer=@Answer
where [UserName]=@username
end


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE procedure vipin
(@username varchar(25))
as
begin
select username from tbluseraccount where username=@username
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

