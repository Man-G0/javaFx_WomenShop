package com.nada.poo;

public class Clothes extends Product{
    private int size_clothes;

    public int getSize_clothes(){return this.size_clothes;}
    public void setsize_clothes(int value){
        if(size_clothes<34 || size_clothes>54) throw new IllegalArgumentException("size_clothes eronnée");
        else this.size_clothes = value;}
    public Clothes(String name, double Price, int NbItem, int size_clothes){
        super(name,Price,NbItem);
        if(size_clothes<34 || size_clothes>54) throw new IllegalArgumentException("size_clothes eronnée");
        else{
            this.size_clothes = size_clothes;}
    }
    @Override
    public String toString(){
        return "( " + super.getId() + ", " + super.getName() + ", " + super.getPrice() + ", " + super.getNbItems() + ", " + this.size_clothes + " )";
    }
    @Override
    public void applyDiscount(){
        double DISCOUNT_CLOTHES=0.3;
        this.setPrice(this.getPrice()*(1-DISCOUNT_CLOTHES));
    }
}
