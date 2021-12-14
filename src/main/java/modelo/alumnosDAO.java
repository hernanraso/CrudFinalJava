/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author herna
 */
public class alumnosDAO 
{
    Connection conexion;
         public alumnosDAO ()
         {
        Conexion con=new Conexion ();
        conexion =con.getConnection();
         }
    public List<alumnos> listaralumnos() throws SQLException
    {
        PreparedStatement ps;
        ResultSet rs;
        List<alumnos> lista=new ArrayList<>();
        try 
        {
            ps=conexion.prepareStatement("SELECT id,nombre,apellido,mail FROM alumnos");
            rs=ps.executeQuery();
            while(rs.next()) 
            {
                int id=rs.getInt("id");
                String nombre=rs.getString("nombre");
                String apellido=rs.getString("apellido");
                String mail=rs.getString("mail");
                alumnos alumno=new alumnos(id,nombre,apellido,mail);
                lista.add(alumno);
            }
            return lista;
        }
        catch(SQLException e) 
        {
            System.out.println(e.toString());
            
        }
        return null;
    }
    
    public alumnos mostraralumnos(int _id)
    {
        PreparedStatement ps;
        ResultSet rs;
        alumnos alumno=null;
        try 
        {
            ps=conexion.prepareStatement("SELECT id,nombre,apellido,mail FROM alumnos WHERE id=?");
            ps.setInt(1, _id);
            rs=ps.executeQuery();
            while(rs.next()) 
            {
                int id=rs.getInt("id");
                String nombre=rs.getString("nombre");
                String apellido=rs.getString("apellido");
                String mail=rs.getString("mail");
                alumno=new alumnos(id,nombre,apellido,mail);
               
            }
            return alumno;
            
        }
        catch(SQLException e) 
        {
            System.out.println(e.toString());
            
        }
        return null;
    }
    
    public boolean insertaralumno(alumnos alumno)
    {
        PreparedStatement ps;
        try 
        {
            
            ps=conexion.prepareStatement("INSERT INTO alumnos(nombre,apellido,mail) VALUES (?,?,?)");
            ps.setString(1, alumno.getNombre());
            ps.setString(2, alumno.getApellido());
            ps.setString(3, alumno.getMail());
            ps.execute();
            return true;
        }
        
        catch(SQLException e)
        {
            System.out.println(e.toString());
            return false;
        }
    }
    
    public boolean actualizaralumno(alumnos alumno)
    {
        PreparedStatement ps;
   
        try
        {
            ps=conexion.prepareStatement("UPDATE alumno SET nombre=?, apellido=?, mail=?, WHERE id=?");
            ps.setString(1, alumno.getNombre());
            ps.setString(2, alumno.getApellido());
            ps.setString(3, alumno.getMail());
            ps.setInt(4, alumno.getId());
            ps.execute();
            return true;
        }
        
        catch(SQLException e)
        {
            System.out.println(e.toString());
            return false;
        }
    }
    
    public boolean eliminaralumno(int _id)
    {
        PreparedStatement ps;
        try
        {
            ps=conexion.prepareStatement("DELETE FROM alumnos WHERE id=?");
            ps.setInt(1, _id);
            ps.execute();
            return true;
        }
        
        catch(SQLException e)
        {
            System.out.println(e.toString());
            return false;
            
        }
    }
    
    
}
