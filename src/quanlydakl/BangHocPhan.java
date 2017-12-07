/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlydakl;

/**
 *
 * @author hoan
 */
public class BangHocPhan {
    String mahp;
    String tenhp;
    int tinchi;
    float tinchihp;

    public BangHocPhan(String mahp, String tenhp, int tinchi, float tinchihp) {
        this.mahp = mahp;
        this.tenhp = tenhp;
        this.tinchi = tinchi;
        this.tinchihp = tinchihp;
    }

    public String getMahp() {
        return mahp;
    }

    public void setMahp(String mahp) {
        this.mahp = mahp;
    }

    public String getTenhp() {
        return tenhp;
    }

    public void setTenhp(String tenhp) {
        this.tenhp = tenhp;
    }

    public int getTinchi() {
        return tinchi;
    }

    public void setTinchi(int tinchi) {
        this.tinchi = tinchi;
    }

    public float getTinchihp() {
        return tinchihp;
    }

    public void setTinchihp(float tinchihp) {
        this.tinchihp = tinchihp;
    }
    
    
}
