/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helpSource;

/**
 *
 * @author ADMIN
 */
public class SanPham {
    private String idSp;
    private String tenSP;
    private String giaSp;

    public SanPham() {
    }

    public SanPham(String idSp, String tenSP, String giaSp) {
        this.idSp = idSp;
        this.tenSP = tenSP;
        this.giaSp = giaSp;
    }

    public String getIdSp() {
        return idSp;
    }

    public void setIdSp(String idSp) {
        this.idSp = idSp;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getGiaSp() {
        return giaSp;
    }

    public void setGiaSp(String giaSp) {
        this.giaSp = giaSp;
    }
    
}
