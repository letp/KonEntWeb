public class Buch {
    private long id;
    private String titel;
    private String isbn;
    private String zustand;
    private String beschreibung;
    private String Preis;
    
    public String getTitel() {
        return titel;
    }
    public void setTitel(String titel) {
        this.titel = titel;
    }
    public String getIsbn() {
        return isbn;
    }
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public String getZustand() {
        return zustand;
    }
    public void setZustand(String zustand) {
        this.zustand = zustand;
    }
    public String getBeschreibung() {
        return beschreibung;
    }
    public void setBeschreibung(String beschreibung) {
        this.beschreibung = beschreibung;
    }
    public String getPreis() {
        return Preis;
    }
    public void setPreis(String preis) {
        Preis = preis;
    }
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
}
