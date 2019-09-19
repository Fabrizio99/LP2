package modelo.bean;

public class Usuario {
    private int idusuario;
    private String usuario;
    private String password;
    private String estado;
    private int codal;
    // metodos de acceso

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String edad) {
        this.estado = edad;
    }

    public int getCodal() {
        return codal;
    }

    public void setCodal(int codal) {
        this.codal = codal;
    }
    
}
