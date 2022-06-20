package implement;

import java.util.ArrayList;
import conexion.ConexionMysql;
import entities.Client;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import resources.Resources;

public class ImplClient {
    String sql = "";
    String sql2 = "";
    Statement stmt = null;
    ResultSet rset = null;
    ConexionMysql cx = new ConexionMysql();
    Resources resource = new Resources();
    ArrayList<Client> listaClients = new ArrayList<>();

    public ArrayList<Client> reporteClients() {
        try {
            sql = " select * from client ";
            stmt = cx.conectaDB().createStatement();
            rset = stmt.executeQuery(sql);
            while (rset.next()) {
                Client client = new Client();

                client.setClient_id(rset.getString("client_id"));
                client.setClient_codigocliente(rset.getString("client_codigocliente"));
                client.setClient_tipo(rset.getString("client_tipo"));
                client.setClient_person_id(rset.getString("client_person_id"));

                listaClients.add(client);
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return listaClients;
    }

    public void guardarClient(Client c) {
            int i=0; 
        try {

            String idClient = "";
            idClient = resource.generaID();

            sql2 = " insert into client ( client_id, client_codigocliente, client_tipo, client_person_id  ) " +
                    " values ('" + idClient + "','" + c.getClient_codigocliente() + "','" + c.getClient_tipo()
                    + "','jajaa' ) ";

                    System.out.println("GUADANDOO.."+sql2);

            stmt = cx.conectaDB().createStatement();
            i = stmt.executeUpdate(sql2);
                                System.out.println("GUADRO??.."+i);

        } catch (SQLException ex) {
            System.out.println("capturando" + ex.getMessage());
        }
    }

    public void ActualizarCliente(Client c) {
        try {
            sql = " update client "+
                  " set client_codigocliente= '"+c.getClient_codigocliente()+"' "+  
                  " , client_tipo= '"+c.getClient_tipo()+"'"+
                  " where client_id='"+c.getClient_id()+"' ";
                  
            int i=0;     
            System.out.println("QUERY: "+sql);       
            stmt=cx.conectaDB().createStatement();
            i=stmt.executeUpdate(sql);
            System.out.println("FUNCIONOO???: "+i);       
            
        }catch (SQLException ex) {
            System.out.println("capturando"+ex.getMessage()); 
        }
    }

     public void eliminarCliente(String id){
        
        try {
            sql = " delete from client "+
                  " where client_id='"+id+"' ";
                  
            int i=0;            
            stmt=cx.conectaDB().createStatement();
            i=stmt.executeUpdate(sql);
            System.out.println("-> "+ i);
            
        }catch (SQLException ex) {
            System.out.println("capturando"+ex.getMessage()); 
        }
    }

}