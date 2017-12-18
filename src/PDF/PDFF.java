package PDF;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.File;
import java.io.FileOutputStream;
import javax.swing.JOptionPane;
import javax.swing.JTable;

/**
 *
 * @author 
 */
public class PDFF {

    public static void makePDF(File file, String tenBieuMau, String ngaythangnam, JTable jTable) {
        Document document = new Document();
        try {
            PdfWriter.getInstance(document, new FileOutputStream(file));

            Font f = FontFactory.getFont("/font/arial.ttf", BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
            BaseFont baseFont = f.getBaseFont();
            Font font1 = new Font(baseFont, 12, 0);
            Font font3 = new Font(baseFont, 16, 0);
            Image image = Image.getInstance(PDFF.class.getResource("logo.png"));
            image.scaleToFit(80, 100);
            document.open();
            Paragraph paragraph1 = new Paragraph();
            paragraph1.setFont(font1);
            paragraph1.add("TRƯỜNG ĐẠI HỌC BÁCH KHOA HÀ NỘI        CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM");
            document.add(paragraph1);

            Paragraph paragraph2 = new Paragraph();
            paragraph2.setFont(font1);
            paragraph2.add(new Chunk(image, 0, -90));
            Phrase phrase = new Phrase(200);
            phrase.add("                                                                   Độc lập - Tự do - Hạnh phúc");
            phrase.add("                                                          ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                            "
                    + "                                                                                        " + ngaythangnam);
            phrase.add("                                                                                    ");
            phrase.add("                                                                                    ");
            phrase.add("                                                                                    ");
            paragraph2.add(phrase);
            document.add(paragraph2);

            Paragraph paragraph4 = new Paragraph();
            paragraph4.setFont(font3);
            paragraph4.add(new Chunk(tenBieuMau));
            paragraph4.setAlignment(Paragraph.ALIGN_CENTER);
            document.add(paragraph4);

            Paragraph paragraph3 = new Paragraph();
            paragraph3.setFont(font3);
            paragraph3.add("                                                                     ");
            paragraph3.add("                                                                     ");
            paragraph3.add("                                                                     ");
            paragraph3.add("                                                                     ");
            paragraph3.setAlignment(Element.ALIGN_CENTER);
            document.add(paragraph3);

            PdfPTable pdfPTable = new PdfPTable(jTable.getColumnCount() + 1);
            pdfPTable.setHorizontalAlignment(Element.ALIGN_CENTER);

            for (int i = 0; i < jTable.getColumnCount() + 1; i++) {
                // pdfPTable.addCell(jTable.getColumnName(i));
                if (i == 0) {
                    pdfPTable.addCell(new Phrase("STT", font1));
                } else {
                    pdfPTable.addCell(new Phrase(jTable.getColumnName(i - 1), font1));
                }

            }

            for (int row = 0; row < jTable.getRowCount(); row++) {
                for (int collum = 0; collum < jTable.getColumnCount() + 1; collum++) {
                    if (collum == 0) {
                        String stt = String.valueOf(row + 1);
                        pdfPTable.addCell(new Phrase(stt, font1));
                    } else {
                        pdfPTable.addCell(new Phrase(jTable.getModel().getValueAt(row, collum - 1).toString(), font1));
                    }
                }
            }

            document.add(pdfPTable);

            Paragraph paragraph5 = new Paragraph();
            paragraph5.setFont(font1);
            paragraph5.add("                                                                     ");
            paragraph5.add("                                                                     ");
            paragraph5.add("                           ");
            paragraph5.add("                            Người lập                                               Xác nhân            ");
            paragraph5.add("                                                    ");
            paragraph5.add("          (Ký và ghi rõ họ tên)                               (Ký và ghi rõ họ tên)");
            document.add(paragraph5);
            document.close();

            JOptionPane.showConfirmDialog(null, "In Báo Cáo Thành Công", "Thông báo", -1);
        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Fail", "Thông báo", -1);
            e.printStackTrace();
        }
    }

    public static void makePDF(File file, String tenBieuMau, String ngaythangnam, JTable jTable,
            String maMuonTra,
            String maNhanVien, String maDocGia,
            String ngayMuon, String ngayTra, String chitietmuon,
            String cacMaQuaHan, String tienPhat) {
        Document document = new Document();
        try {
            PdfWriter.getInstance(document, new FileOutputStream(file));

            Font f = FontFactory.getFont("/font/arial.ttf", BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
            BaseFont baseFont = f.getBaseFont();
            Font font1 = new Font(baseFont, 12, 0);
            Font font2 = new Font(baseFont, 14, 0);
            Font font3 = new Font(baseFont, 16, 0);
            Image image = Image.getInstance(PDFF.class.getResource("logo.png"));
            image.scaleToFit(80, 100);
            document.open();
            Paragraph paragraph1 = new Paragraph();
            paragraph1.setFont(font1);
            paragraph1.add("TRƯỜNG ĐẠI HỌC BÁCH KHOA HÀ NỘI        CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM");
            document.add(paragraph1);

            Paragraph paragraph2 = new Paragraph();
            paragraph2.setFont(font1);
            paragraph2.add(new Chunk(image, 0, -90));
            Phrase phrase = new Phrase(200);
            phrase.add("Thư viện Tạ Quang Bửu                            Độc lập - Tự do - Hạnh phúc");
            phrase.add("                                                        ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                                     ");
            phrase.add("                                                            "
                    + "                                                           "
                    + "" + ngaythangnam);
            phrase.add("                                                                                    ");
            phrase.add("                                                                                    ");
            phrase.add("                                                                                    ");
            paragraph2.add(phrase);
            document.add(paragraph2);

            Paragraph paragraph3 = new Paragraph();
            paragraph3.setFont(font2);
            Paragraph paragraph4 = new Paragraph();
            paragraph4.setFont(font3);
            paragraph4.add(new Chunk("THÔNG TIN CHI TIẾT MƯỢN TRẢ"));
            paragraph4.add("                                                                        ");
            paragraph4.setAlignment(Paragraph.ALIGN_CENTER);
            document.add(paragraph4);

            PdfPTable infoTable = new PdfPTable(2);

            PdfPCell cell0 = setPdfpCell("Mã Mượn Trả   : " + maMuonTra);
            PdfPCell cell01 = setPdfpCell("");

            PdfPCell cell1 = setPdfpCell("Mã Nhân Viên  : " + maNhanVien);
            PdfPCell cell2 = setPdfpCell("Mã Độc Giả     : " + maDocGia);

            PdfPCell cell9 = setPdfpCell("Ngày Mượn     : " + ngayMuon);
            PdfPCell cell10 = setPdfpCell("Ngày Hẹn Trả  : " + ngayTra);
            PdfPCell cell11 = setPdfpCell("Chi Tiết Mượn : " + chitietmuon);

            infoTable.addCell(cell0);
            infoTable.addCell(cell01);

            infoTable.addCell(cell1);
            infoTable.addCell(cell2);

            infoTable.addCell(cell9);
            infoTable.addCell(cell10);
            infoTable.addCell(cell11);
            infoTable.addCell(cell01);

            document.add(infoTable);

            paragraph3.add(Chunk.NEWLINE);
            paragraph3.add(tenBieuMau);
            paragraph3.add(Chunk.NEWLINE);
            paragraph3.add(Chunk.NEWLINE);
            paragraph3.add(Chunk.NEWLINE);
            paragraph3.setAlignment(Paragraph.ALIGN_CENTER);
            document.add(paragraph3);

            PdfPTable pdfPTable = new PdfPTable(jTable.getColumnCount() + 1);
            pdfPTable.setHorizontalAlignment(PdfPTable.ALIGN_CENTER);

            for (int i = 0; i < jTable.getColumnCount() + 1; i++) {
                // pdfPTable.addCell(jTable.getColumnName(i));
                if (i == 0) {
                    pdfPTable.addCell(new Phrase("STT", font1));
                } else {
                    pdfPTable.addCell(new Phrase(jTable.getColumnName(i - 1), font1));
                }

            }

            for (int row = 0; row < jTable.getRowCount(); row++) {
                for (int collum = 0; collum < jTable.getColumnCount() + 1; collum++) {
                    if (collum == 0) {
                        String stt = String.valueOf(row + 1);
                        pdfPTable.addCell(new Phrase(stt, font1));
                    } else {
                        pdfPTable.addCell(new Phrase(jTable.getModel().getValueAt(row, collum - 1).toString(), font1));
                    }
                }
            }
            Paragraph paragraph6 = new Paragraph();
            paragraph6.setFont(font1);
            paragraph6.add(Chunk.NEWLINE);
            paragraph6.add("        Các mã chi tiết quá hạn thực tế: " + cacMaQuaHan);
            paragraph6.add(Chunk.NEWLINE);
            paragraph6.add("        Tiền phạt thực tế: " + tienPhat);

            Paragraph paragraph5 = new Paragraph();
            paragraph5.setFont(font1);
            paragraph5.add("                                                                     ");
            paragraph5.add("                                                                     ");
            paragraph5.add("                           ");
            paragraph5.add("                            Người lập                                               Xác nhân của thủ thư");
            paragraph5.add("                                                    ");
            paragraph5.add("(Ký và ghi rõ họ tên)                                       (Ký và ghi rõ họ tên)");

            document.add(pdfPTable);
            document.add(paragraph6);
            document.add(paragraph5);
            document.close();
            JOptionPane.showConfirmDialog(null, "In Báo Cáo Thành Công", "Thông báo", JOptionPane.PLAIN_MESSAGE);
        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "Fail", "Thông báo", -1);
            e.printStackTrace();
        }
    }

    private static PdfPCell setPdfpCell(String data) {
        Font f = FontFactory.getFont("/font/arial.ttf", BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
        BaseFont baseFont = f.getBaseFont();
        Font font1 = new Font(baseFont, 12, 0);
        PdfPCell cell = new PdfPCell();
        cell.setFixedHeight(22);
        cell.setPhrase(new Phrase(data, font1));
        cell.setBorder(PdfPCell.NO_BORDER);
        cell.setPaddingLeft(20);
        return cell;
    }

}