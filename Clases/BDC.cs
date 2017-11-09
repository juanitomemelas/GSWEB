using System;
using Oracle.DataAccess.Client;

namespace WebSanchez2016.Clases
{
    public class BDC
    {
        string strCon = "Data Source=opera.SANCHEZ.COM.MX; Persist Security Info=True; User ID=iddba; Password=idmgr";

        public OracleConnection getConection()
        {
            try
            {
                OracleConnection cnn = new OracleConnection(strCon);
                return cnn;
            }
            catch (Exception ExGetConection)
            {
                throw new Exception("ERROR: Error al realizar la conexión a la Base de Datos [" + ExGetConection.Message + "]");
            }
        }
    }
}