using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using ShoppingCart.DAL;
using System.Data.SqlClient;
using ShoppingCart.BL;
using System.Configuration;

namespace ShoppingCart.BL
{
    public class ProductController
    {
        public static DataSet getALLCategories()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetALLCategories"));
        }
        public static DataSet getPopularCategories()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetPopularCategories"));
        }
        public static DataSet getALLBrands()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetALLBrands"));
        }
        public static DataSet getPopularBrands()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetPopularBrands"));
        }

        public static DataSet getPopularTypes()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetAllTypes"));
        }
        public static DataSet GetAllProductsBYBrandID(int BrandID)
        {
            SqlParameter p = new SqlParameter("@BrandID", BrandID);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetProductsByBrandID", p));
        }
        public static DataSet GetAllProductsByCategoryID(int CategoryID)
        {
            SqlParameter p = new SqlParameter("@CategoryID", CategoryID);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetProductsByCategoryId", p));
        }
        public static DataSet GetProductNameDetails(int ProductID)
        {
            SqlParameter p = new SqlParameter("@ProductId", ProductID);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spBrandProductName", p));


        }
        public static DataSet GetProductAttributes(int ProductID)
        {
            SqlParameter p = new SqlParameter("@ProductId", ProductID);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spProductAttribute", p));

        }
        public static DataSet GetProductNameImage(int ProductID)
        {
            SqlParameter p = new SqlParameter("@ProductId", ProductID);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spProductnameImage", p));

        }
        public static SqlDataReader GetProductDesc(string ProductID)
        {
            SqlParameter p = new SqlParameter("@ProductId", ProductID);
            return (SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spProductDesc", p));
            

        }
        /*public static DataSet GetProductFeatures(int ProductID)
         {
             SqlParameter p = new SqlParameter("@ProductId", ProductID);
             return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spProductFeatures", p));
         }*/

        public static string GetBrandName(int BrandId)
        {
            string s = "";
            SqlParameter p = new SqlParameter("@BrandID", BrandId);
            DataSet ds = SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spBrandNameNew", p);

            if (ds.Tables[0].Rows.Count > 0)
            {
                s = ds.Tables[0].Rows[0][0].ToString();
            }
            return s;
        }


        public static DataSet GetOffers(int ProductID)
        {
            SqlParameter p = new SqlParameter("@ProductId", ProductID);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spOffer", p));

        }

        public static DataSet GetRating(int ProductID)
        {
            SqlParameter p = new SqlParameter("@ProductId", ProductID);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spRating", p));

        }

        public static string getBrandName(int ProductID)
        {
            string BrandName = "";
            SqlDataReader drBrand;
            SqlParameter p = new SqlParameter("@ProductID", ProductID);
            drBrand = SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spBrandName", p);
            if (drBrand != null)
            {
                if (drBrand.Read())
                {
                    BrandName = drBrand["BrandName"].ToString();
                }
            }
            return (BrandName);
        }

        public static string getProductPrice(int ProductID)
        {
            string Price = "0";
            SqlDataReader drPrice;
            SqlParameter p = new SqlParameter("@ProductId", ProductID);
            drPrice = SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetProductbyproductId", p);
            if (drPrice != null)
            {
                if (drPrice.Read())
                    Price = drPrice["SalePrice"].ToString();
            }
            return (Price);
        }
        public static DataSet GetQuantity(int ProductID, string SessionID, int Quantity, float Price)
        {
            SqlParameter p1 = new SqlParameter("@ProductID", ProductID);
            SqlParameter p2 = new SqlParameter("@p_sessionId", SessionID);
            SqlParameter p3 = new SqlParameter("@p_quantity", Quantity);
            SqlParameter p4 = new SqlParameter("@p_price", Price);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spQuantity", p1, p2, p3, p4));
        }
        //public void EnterShoppingCart(int id, string sessionID, int qty, decimal price)
        //{
        //    SqlParameter[] p = new SqlParameter[4];
        //    p[0] = new SqlParameter("@ProductID", SqlDbType.Int);
        //    p[0].Value = id;
        //    p[1] = new SqlParameter("@p_sessionId", SqlDbType.NVarChar);
        //    p[1].Value = sessionID;
        //    p[2] = new SqlParameter("@p_quantity", SqlDbType.BigInt);
        //    p[2].Value = qty;
        //    p[3] = new SqlParameter("@p_price", SqlDbType.Float);
        //    p[3].Value = price;
        //    SqlHelper.ExecuteNonQuery(ConfigurationSettings.AppSettings["CONSTR"], CommandType.StoredProcedure, "spQuantity", p);
        //}
        public static DataSet GetShoppingCartDetails(string SessionID)
        {
            SqlParameter p = new SqlParameter("@SessionId", SessionID);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spCartProducts", p));
        }

        public static void UpdateShoppingCartItem(string SessionId, int ProductId,
            int Quantity)
        {
            SqlParameter p1 = new SqlParameter("@SessionId", SessionId);
            SqlParameter p2 = new SqlParameter("@ProductId", ProductId);
            SqlParameter p3 = new SqlParameter("@quantity", Quantity);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spUpdateCart", p1, p2, p3);


        }
        public static void RemoveShoppingCartItem(string SessionId, int ProductId)
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@SessionId", SqlDbType.NVarChar);
            p[0].Value = SessionId;
            p[1] = new SqlParameter("@ProductId", SqlDbType.BigInt);
            p[1].Value = ProductId;
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spRemoveCart", p);
        }

        public static void GetLoginDetails(string p_username, string p_fname,
        string p_lname, string p_password, string p_question, string p_answer,
        DateTime p_dob, string p_no, string p_gender, string p_email,
        string p_address, int p_country, int p_state,
        int p_city, string p_zcode)
        {
            SqlParameter[] p = new SqlParameter[15];
            p[0] = new SqlParameter("@username", SqlDbType.NVarChar);
            p[0].Value = p_username;
            p[1] = new SqlParameter("@fname", SqlDbType.NVarChar);
            p[1].Value = p_fname;
            p[2] = new SqlParameter("@lname", SqlDbType.NVarChar);
            p[2].Value = p_lname;
            p[3] = new SqlParameter("@password", SqlDbType.NVarChar);
            p[3].Value = p_password;
            p[4] = new SqlParameter("@HQuestion", SqlDbType.NVarChar);
            p[4].Value = p_question;
            p[5] = new SqlParameter("@Answer", SqlDbType.NVarChar);
            p[5].Value = p_answer;
            p[6] = new SqlParameter("@dob", SqlDbType.DateTime);
            p[6].Value = p_dob;
            p[7] = new SqlParameter("@ContactNo", SqlDbType.NVarChar);
            p[7].Value = p_no;
            p[8] = new SqlParameter("@gender", SqlDbType.NVarChar);
            p[8].Value = p_gender;
            p[9] = new SqlParameter("@emailId", SqlDbType.NVarChar);
            p[9].Value = p_email;
            p[10] = new SqlParameter("@Address", SqlDbType.NVarChar);
            p[10].Value = p_address;
            p[11] = new SqlParameter("@Country", SqlDbType.BigInt);
            p[11].Value = p_country;
            p[12] = new SqlParameter("@state", SqlDbType.BigInt);
            p[12].Value = p_state;
            p[13] = new SqlParameter("@City", SqlDbType.BigInt);
            p[13].Value = p_city;
            p[14] = new SqlParameter("@ZipCode ", SqlDbType.VarChar);
            p[14].Value = p_zcode;
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure,
            "spRegistration", p);

        }

        public static DataSet getCitydetails()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetAllCities"));
        }
        public static DataSet getCitydetailsByStateID(int StateID)
        {
            SqlParameter p = new SqlParameter("@StateID", SqlDbType.Int);
            p.Value = StateID;
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetAllCitiesByStateID", p));
        }

        public static DataSet getCountrydetails()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spCountry"));
        }

        public static DataSet getAllStatedetails()
        {
            return SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetAllStates");
        }

        public static DataSet getAllStatesByCountryID(int CountryID)
        {
            SqlParameter p = new SqlParameter("@CountryID", SqlDbType.Int);
            p.Value = CountryID;
            return SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetAllStatesByCountryID", p);
        }
        public static float GetCartTotal(string SID)
        {
            SqlParameter p = new SqlParameter("@SessionID", SID);
            return (float.Parse(SqlHelper.ExecuteScalar(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetCartTotal", p).ToString()));
        }
        public static SqlDataReader GetLogin(string Username, string Password)
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@Username", SqlDbType.NVarChar);
            p[0].Value = Username;
            p[1] = new SqlParameter("@Password", SqlDbType.NVarChar);
            p[1].Value = Password;
            return (SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spLogin", p));
        }
        public static Object GetRoleByUsername(string Username)
        {
            SqlParameter p = new SqlParameter("@Username", SqlDbType.NVarChar);
            p.Value = Username;
            return (SqlHelper.ExecuteScalar(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetRoleByUsername", p));
        }
        public static SqlDataReader getQuestion(string user)
        {
            SqlParameter p = new SqlParameter("@UserName", user);
            return (SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spPassworddetails", p));

        }

        public static SqlDataReader getPassword(string username, string answer)
        {
            SqlParameter p1 = new SqlParameter("@UserName", username);
            SqlParameter p2 = new SqlParameter("@Answer", answer);
            return (SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spRetrievePassword", p1, p2));
         }

        public static string getuserpwd(string username, string password, string newpwd)
        {
            SqlParameter[] p = new SqlParameter[4];
            p[0] = new SqlParameter("@Username", SqlDbType.NVarChar);
            p[0].Value = username;
            p[1] = new SqlParameter("@pwd", SqlDbType.NVarChar);
            p[1].Value = password;
            p[2] = new SqlParameter("@newpwd", SqlDbType.NVarChar);
            p[2].Value = newpwd;
            p[3] = new SqlParameter("@response", SqlDbType.NVarChar, 100);
            p[3].Direction = ParameterDirection.Output;
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spUserPwd", p);
            return (p[3].Value.ToString());
        }
        public static SqlDataReader getAccountDetails(string username)
        {
            SqlParameter p = new SqlParameter("@User", username);
            return (SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spChangeDetails", p));
        }
        public static void getupdate(string username, string fname,string lname, string question, string answer,
     DateTime dob, string no, string gender, string email,string address, int country, int state,
     int city, string zcode)
        {
            SqlParameter[] p = new SqlParameter[14];
            p[0] = new SqlParameter("@username", SqlDbType.NVarChar);
            p[0].Value = username;
            p[1] = new SqlParameter("@fname", SqlDbType.NVarChar);
            p[1].Value = fname;
            p[2] = new SqlParameter("@lname", SqlDbType.NVarChar);
            p[2].Value = lname;
            p[3] = new SqlParameter("@dob", SqlDbType.DateTime);
            p[3].Value = dob;
            p[4] = new SqlParameter("@ContactNo", SqlDbType.NVarChar);
            p[4].Value = no;
            p[5] = new SqlParameter("@gender", SqlDbType.NVarChar);
            p[5].Value = gender;
            p[6] = new SqlParameter("@emailId", SqlDbType.NVarChar);
            p[6].Value = email;
            p[7] = new SqlParameter("@HintQuestion", SqlDbType.NVarChar);
            p[7].Value = question;
            p[8] = new SqlParameter("@Answer", SqlDbType.NVarChar);
            p[8].Value = answer;
            p[9] = new SqlParameter("@Address", SqlDbType.NVarChar);
            p[9].Value = address;
            p[10] = new SqlParameter("@Country", SqlDbType.BigInt);
            p[10].Value = country;
            p[11] = new SqlParameter("@state", SqlDbType.BigInt);
            p[11].Value = state;
            p[12] = new SqlParameter("@City", SqlDbType.BigInt);
            p[12].Value = city;
            p[13] = new SqlParameter("@ZipCode", SqlDbType.NVarChar);
            p[13].Value = zcode;
            SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spUpdateDetails", p);
        }

        public static DataSet getHintquestion()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "getQuestion"));
        }


        public static int[] InsertAddress(string fname, string lname, string email, string gender, string contact,
            string nadrr, string ncountry, string nstate, string ncity)
        {
            int[] a=null;
            SqlParameter[] p = new SqlParameter[11];
            p[0] = new SqlParameter("@firstname", SqlDbType.NVarChar);
            p[0].Value = fname;
            p[1] = new SqlParameter("@lastname", SqlDbType.NVarChar);
            p[1].Value = lname;
            p[2] = new SqlParameter("@Email", SqlDbType.NVarChar);
            p[2].Value = email;
            p[3] = new SqlParameter("@Gender", SqlDbType.NVarChar);
            p[3].Value = gender;
            p[4] = new SqlParameter("@contactno", SqlDbType.NVarChar);
            p[4].Value = contact;
            p[5] = new SqlParameter("@Address", SqlDbType.NVarChar);
            p[5].Value = nadrr;
            p[6] = new SqlParameter("@Country", SqlDbType.NVarChar);
            p[6].Value = ncountry;
            p[7] = new SqlParameter("@State", SqlDbType.NVarChar);
            p[7].Value = nstate;
            p[8] = new SqlParameter("@City ", SqlDbType.NVarChar);
            p[8].Value = ncity;

            p[9] = new SqlParameter("@AID", SqlDbType.BigInt);
            p[9].Direction = ParameterDirection.Output;
            p[10] = new SqlParameter("@Cid", SqlDbType.BigInt);
            p[10].Direction = ParameterDirection.Output;
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spInsertAddress", p);
         if(p[9]!=null)
            a[0] = int.Parse(p[9].Value.ToString());
            if(p[10]!=null)               
            a[1] = int.Parse(p[10].Value.ToString());
            return (a);
        }

        public static int[] spInsertAddressV2(string fname, string lname, string email, string gender, string contact,
            string nadrr, int ncountry, int nstate, int ncity)
        {
            int[] a=new int[2];
            SqlParameter[] p = new SqlParameter[11];
            p[0] = new SqlParameter("@firstname", SqlDbType.NVarChar);
            p[0].Value = fname;
            p[1] = new SqlParameter("@lastname", SqlDbType.NVarChar);
            p[1].Value = lname;
            p[2] = new SqlParameter("@Email", SqlDbType.NVarChar);
            p[2].Value = email;
            p[3] = new SqlParameter("@Gender", SqlDbType.NVarChar);
            p[3].Value = gender;
            p[4] = new SqlParameter("@contactno", SqlDbType.NVarChar);
            p[4].Value = contact;
            p[5] = new SqlParameter("@Address", SqlDbType.NVarChar);
            p[5].Value = nadrr;
            p[6] = new SqlParameter("@CountryID", SqlDbType.Int);
            p[6].Value = ncountry;
            p[7] = new SqlParameter("@StateID", SqlDbType.Int);
            p[7].Value = nstate;
            p[8] = new SqlParameter("@CityID", SqlDbType.Int);
            p[8].Value = ncity;

            p[9] = new SqlParameter("@AID", SqlDbType.BigInt);
            p[9].Direction = ParameterDirection.Output;
            p[10] = new SqlParameter("@Cid", SqlDbType.BigInt);
            p[10].Direction = ParameterDirection.Output;
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spInsertAddressV2", p);
         if(p[9]!=null)
            a[0]= int.Parse(p[9].Value.ToString());
            if(p[10]!=null)               
            a[1] = int.Parse(p[10].Value.ToString());
            return (a);
        }

        public static void Deletecartlogout(string Sessionid)
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@sessionId", SqlDbType.NVarChar);
            p[0].Value = Sessionid;
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spDeleteCartlogout", p);

        }
        public static int GetIdFromtblUserAccount(string username)
        {
            SqlParameter p = new SqlParameter("@username", username);
            SqlParameter p1 = new SqlParameter("@customerid",SqlDbType.BigInt);
            p1.Direction = ParameterDirection.Output;

             SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetCustId", p,p1);
            return(int.Parse(p1.Value.ToString()));
        }
        public static int insertorder(int custid,float orderamnt,float taxamnt,float netamnt,int shipaddrId,int billaddrId,string sessionid,string billfname)
        {
            SqlParameter[] p = new SqlParameter[9];
            p[0] = new SqlParameter("@CustId", custid);
            p[1] = new SqlParameter("@OrderAmnt", orderamnt);
            p[2] = new SqlParameter("@TaxAmnt", taxamnt);
            p[3] = new SqlParameter("@NetAmnt", netamnt);
            p[4] = new SqlParameter("@ShipAddrId", shipaddrId);
            p[5] = new SqlParameter("@BillAddrId", billaddrId);
            p[6] = new SqlParameter("@SessionId", sessionid);
            p[7] = new SqlParameter("@OId",SqlDbType.BigInt);
            p[7].Direction = ParameterDirection.Output;
            p[8] = new SqlParameter("@BillFname",billfname);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spinsertorder", p);
            return(int.Parse(p[7].Value.ToString()));
        }
        public static int shoppingcartitems( string Sessionid)
        {
            //SqlParameter[] p = new SqlParameter[2];
            SqlParameter p = new SqlParameter("@SessionID", Sessionid);
            return (int.Parse(SqlHelper.ExecuteScalar(ConnectionString.GetConnectionString(),CommandType.StoredProcedure, "spGetCartItems", p).ToString()));
        }
        public static void UpdateRate(string ProductId, int RateId)
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@ProductId", ProductId);
            p[1] = new SqlParameter("@RateId", RateId);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spRatenow", p);
        }
        public static void InsertWishlist(string Username, string ProductId)
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@Uname", Username);
            p[1] = new SqlParameter("@ProductId", ProductId);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spInsertWishList", p);
        }

        public static DataSet GetWishListDetails(string username)
        {
            SqlParameter p = new SqlParameter("@username", username);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetWishList", p));
        }

        public static void DeleteWishList(int ProductId)
        {
            SqlParameter p = new SqlParameter("@ProductId", ProductId);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spRemoveFromWishList", p);
         }
        public static DataSet RetrieveOrderDetails(string User)
        {
            SqlParameter p = new SqlParameter("@Username", User);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spRetrieveOrderDetails", p));

        
        
        }
        public static DataSet RetrieveOrderStatus(string User,int OrderId)
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0]=new SqlParameter("@Username", User);
            p[1] = new SqlParameter("@OrderId", OrderId);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spRetrieveOrderStatus", p));

        }
        public static void DeleteOrderDetails(int Ordernum)
        {
            SqlParameter p = new SqlParameter("@OrderId", Ordernum);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spDeleteOrder", p);
        
        
        }

        public static DataSet ViewGallery()
        {

            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGallery"));
        }

        public static DataSet getadminorder()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spgetadminorder"));
        }
        public static void updateadminorder(float amount, string status, int id)
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@amount", amount);
            p[1] = new SqlParameter("@status", status);
            p[2] = new SqlParameter("OrderId", id);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spupdateadminorder", p);
        }
        public static SqlDataReader updateadminorder1(int id)
        {
            SqlParameter p = new SqlParameter("@orderid", id);
            return (SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spadmincancel", p));
        }
        public static void deleteadminorder(int id)
        {
            SqlParameter p = new SqlParameter("@orderid", id);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spadmindelete", p);
        }

        public static DataSet CustomFilter(int Operator, double Amount)
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@op", Operator);
            p[1] = new SqlParameter("@amnt", Amount);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spfilterbyorderamnt", p));
        }
        public static DataSet filterbydate(DateTime from, DateTime to)
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@from", from);
            p[1] = new SqlParameter("@to", to);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spfilterbydate", p));
        }
        public static SqlDataReader filterbyname(string name)
        {
            SqlParameter p = new SqlParameter("@name", name);
            return (SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spfilterbyname", p));
        }
        public static DataSet filterbystatus(string status)
        {
            SqlParameter p = new SqlParameter("@status", status);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spfilterbystatus", p));
        }
        public static SqlDataReader filterbyorderno(int id)
        {
            SqlParameter p = new SqlParameter("@orderid", id);
            return (SqlHelper.ExecuteReader(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spfilterbyorderno", p));
        }
        public static DataSet sortbyordernoasc()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "sortbyordernoasc"));
        }
        public static DataSet sortbyordernodesc()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "sortbyordernodesc"));
        }
        public static DataSet sortbycustnameasc()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "sortbycustnameasc"));
        }
        public static DataSet sortbycustnamedesc()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "sortbycustnamedesc"));
        }
        public static DataSet sortbyorderdateasc()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "sortbyorderdateasc"));
        }
        public static DataSet sortbyorderdatedesc()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "sortbyorderdatedesc"));
        }
        public static DataSet getCategoryNames()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetCategoryName"));
        }
        public static DataSet getBrandNames()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetBrandName"));
        }
        public static DataSet GetAllProducts()
        {
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetProducts"));
        }
        public static DataSet GetAllProductsBYID(int Id)
        {
            SqlParameter p = new SqlParameter("@Id", Id);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetProductsByID", p));
        }
        public static void InsertCategory(string Name, string Description, string Image)
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@Name", Name);
            p[1] = new SqlParameter("@Description", Description);
            p[2] = new SqlParameter("@Image", Image);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spInsertNewCategories", p);

        }

        public static void InsertBrand(string BrandName, string Discription, string Logo)
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@BrandName", BrandName);
            p[1] = new SqlParameter("@Description", Discription);
            p[2] = new SqlParameter("@Logo", Logo);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spInsertNewBrand", p);

        }
        public static void UpdateBrand(int BrandId, string BrandName, string Description, string Logo)
        {
            SqlParameter[] p = new SqlParameter[4];
            p[0] = new SqlParameter("@ID", BrandId);
            p[1] = new SqlParameter("@BrandName", BrandName);
            p[2] = new SqlParameter("@Description", Description);
            p[3] = new SqlParameter("@Logo", Logo);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spUpdateBrand", p);
        }
        public static void UpdateCategory(int Id, string Name, string Description, string Image)
        {
            SqlParameter[] p = new SqlParameter[4];
            p[0] = new SqlParameter("@Id", Id);
            p[1] = new SqlParameter("@Name", Name);
            p[2] = new SqlParameter("@Description", Description);
            p[3] = new SqlParameter("@Image", Image);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spUpdateCategory", p);
        }
        public static void UpdateProduct(int Id, string Name, string Description, int Quantity, string Image, float PurchasePrice, float SalePrice)
        {
            SqlParameter[] p = new SqlParameter[7];
            p[0] = new SqlParameter("@Id", Id);
            p[1] = new SqlParameter("@Name", Name);
            p[2] = new SqlParameter("@Description", Description);
            p[3] = new SqlParameter("@Quantity", Quantity);
            p[4] = new SqlParameter("@Image", Image);
            p[5] = new SqlParameter("@PurchasePrice", PurchasePrice);
            p[6] = new SqlParameter("@SalePrice", SalePrice);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spUpdateProduct", p);
        }

        public static void DeleteBrand(int BrandId)
        {
            SqlParameter p = new SqlParameter("@BrandId", BrandId);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spDeleteBrand", p);
        }
        public static void DeleteCategory(int CatId)
        {
            SqlParameter p = new SqlParameter("@CatId", CatId);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spDeleteCategory", p);
        }
        public static void DeleteProduct(int Id)
        {
            SqlParameter p = new SqlParameter("@Id", Id);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spDeleteProduct", p);
        }
        public static void InsertProduct(string name, float PurchasePrice, float SalePrice, int Quantity, string Description, string Image, int BrandId, int CategoryId)
        {
            SqlParameter[] p = new SqlParameter[8];
            p[0] = new SqlParameter("@name", name);
            p[1] = new SqlParameter("@PurchasePrice", PurchasePrice);
            p[2] = new SqlParameter("@SalePrice", SalePrice);
            p[3] = new SqlParameter("@Quantity", Quantity);
            p[4] = new SqlParameter("@Description", Description);
            p[5] = new SqlParameter("@Image", Image);
            p[6] = new SqlParameter("@BrandId", BrandId);
            p[7] = new SqlParameter("@CategoryId", CategoryId);
            SqlHelper.ExecuteNonQuery(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spInsertNewProduct", p);

        }
        public static DataSet GetAllBrandBYBrandID(int BrandId)
        {
            SqlParameter p = new SqlParameter("@BrandId", BrandId);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetBrandBYBrandID", p));
        }
        
        public static DataSet GetAllCategoriesBYCategoryID(int CatId)
        {
            SqlParameter p = new SqlParameter("@CatId", CatId);
            return (SqlHelper.ExecuteDataset(ConnectionString.GetConnectionString(), CommandType.StoredProcedure, "spGetCategoriesBYCategoryID", p));
        }
    }

}





     
    
