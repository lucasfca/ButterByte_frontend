package dao;                                                                                                                          
                                                                                                                                       
import java.sql.Connection;                                                                                                            
import java.sql.PreparedStatement;                                                                                                    
import java.sql.ResultSet;                                                                                                            
import java.sql.SQLException;                                                                                                          
                                                                                                                                       
import model.Usuario;                                                                                                                  
                                                                                                                                       
public class UsuarioDAO {                                                                                                              
public int criar(Usuario usuario) {                                                                                                
 String sqlInsert = " INSERT INTO Usuario (nome,email,cargo,nomeEmpresa,cpf,codigoRegistro,telefone,ramal,senha) values (?, ?, ?,?,?,?,?,?,?)";                                                  
                                                                 
 try (Connection conn = ConnectionFactory.obtemConexao();                                                                      
   PreparedStatement stm = conn.prepareStatement(sqlInsert);) {                                                          
  stm.setString(1, usuario.getNome());                                                                                      
  stm.setString(2, usuario.getEmail());                                                                                      
  stm.setString(3, usuario.getCargo());
  stm.setString(4, usuario.getEmpresa());
  stm.setLong(5, usuario.getCpf());
  stm.setLong(6, usuario.getCodigoRegistro());
  stm.setLong(7, usuario.getTelefone());
  stm.setInt(8, usuario.getRamal());
  stm.setString(9, usuario.getSenha());
  stm.execute();                                                                                                            
  String sqlQuery = "SELECT LAST_INSERT_ID()";                                                                              
  try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);                                                            
    ResultSet rs = stm2.executeQuery();) {                                                                            
   if (rs.next()) {                                                                                                      
    usuario.setId(rs.getInt(1));                                                                                      
   }                                                                                                                      
  } catch (SQLException e) {                                                                                                
   e.printStackTrace();                                                                                                  
  }                                                                                                                          
 } catch (SQLException e) {                                                                                                    
  e.printStackTrace();                                                                                                      
 }                                                                                                                              
 return usuario.getId();                                                                                                        
}                                                                                                                                  
                                                                                                                                       
public void atualizar(Usuario usuario) {                                                                                          
 String sqlUpdate = "UPDATE usuario SET nome=?, email=?, cargo=? empresa=? cpf=? codigoRegistro=? telefone=? ramal=? senha=? WHERE id=?";                                                    
                                                               
 try (Connection conn = ConnectionFactory.obtemConexao();                                                                      
   PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {                                                          
  stm.setString(1, usuario.getNome());                                                                                      
  stm.setString(2, usuario.getEmail());                                                                                      
  stm.setString(3, usuario.getCargo());
  stm.setString(4, usuario.getEmpresa());                                                                                          
  stm.setLong(5, usuario.getCpf());
  stm.setLong(6, usuario.getCodigoRegistro());
  stm.setLong(7, usuario.getTelefone());
  stm.setInt(8, usuario.getRamal());
  stm.setString(9, usuario.getSenha());
  stm.setInt(10, usuario.getId());
  stm.execute();                                                                                                            
 } catch (Exception e) {                                                                                                        
  e.printStackTrace();                                                                                                      
 }                                                                                                                              
}                                                                                                                                  
                                                                                                                                       
public void excluir(int id) {                                                                                                      
 String sqlDelete = "DELETE FROM usuario WHERE id = ?";                                                                        
                                                                
 try (Connection conn = ConnectionFactory.obtemConexao();                                                                      
   PreparedStatement stm = conn.prepareStatement(sqlDelete);) {                                                          
  stm.setInt(1, id);                                                                                                        
  stm.execute();                                                                                                            
 } catch (Exception e) {                                                                                                        
  e.printStackTrace();                                                                                                      
 }                                                                                                                              
}                                                                                                                                  
                                                                                                                                       
public Usuario carregar(int id) {                                                                                                  
 Usuario usuario = new Usuario();                                                                                              
 usuario.setId(id);                                                                                                            
 String sqlSelect = "SELECT nome,email,cargo,nomeEmpresa,cpf,codigoRegistro,telefone,ramal FROM usuario WHERE usuario.id = ?";                                              
                                                             
 try (Connection conn = ConnectionFactory.obtemConexao();                                                                      
   PreparedStatement stm = conn.prepareStatement(sqlSelect);) {                                                          
  stm.setInt(1, usuario.getId());                                                                                            
  try (ResultSet rs = stm.executeQuery();) {                                                                                
   if (rs.next()) {                                                                                                      
	   stm.setString(1, usuario.getNome());                                                                                      
	   stm.setString(2, usuario.getEmail());                                                                                      
	   stm.setString(3, usuario.getCargo());
	   stm.setString(4, usuario.getEmpresa());  
	   stm.setLong(5, usuario.getCpf());
	   stm.setLong(6, usuario.getCodigoRegistro());
	   stm.setLong(7, usuario.getTelefone());
	   stm.setInt(8, usuario.getRamal());

   } else {                                                                                                              
    usuario.setId(-1);                                                                                                
    usuario.setNome(null);                                                                                            
    usuario.setEmail(null);                                                                                            
    usuario.setCargo(null);
    usuario.setEmpresa(null);
    usuario.setCpf(0);
    usuario.setCodigoRegistro(0);
    usuario.setTelefone(0);
    usuario.setRamal(0);
   }                                                                                                                      
  } catch (SQLException e) {                                                                                                
   e.printStackTrace();                                                                                                  
  }                                                                                                                          
 } catch (SQLException e1) {                                                                                                    
  System.out.print(e1.getStackTrace());                                                                                      
 }                                                                                                                              
 return usuario;                                                                                                                
}                                                                                                                                  
                                                                                                                                       
} 