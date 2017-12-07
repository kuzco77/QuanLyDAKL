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
public class BangLoaiHinh {
    String malh;
    String nhomlh;
    float kl;
    float kc;

    public String getMalh() {
        return malh;
    }

    public void setMalh(String malh) {
        this.malh = malh;
    }

    public String getNhomlh() {
        return nhomlh;
    }

    public void setNhomlh(String nhomlh) {
        this.nhomlh = nhomlh;
    }

    public float getKl() {
        return kl;
    }

    public void setKl(float kl) {
        this.kl = kl;
    }

    public float getKc() {
        return kc;
    }

    public void setKc(float kc) {
        this.kc = kc;
    }

    public BangLoaiHinh(String malh, String nhomlh, float kl, float kc) {
        this.malh = malh;
        this.nhomlh = nhomlh;
        this.kl = kl;
        this.kc = kc;
    }
    
}
