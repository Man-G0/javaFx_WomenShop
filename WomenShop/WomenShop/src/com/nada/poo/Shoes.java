package com.nada.poo;

public class Shoes extends Product {

  private int shoesSize;

  public Shoes(String name, double price, int nbItems, int shoesSize) {
    super(name, price, nbItems);
    this.shoesSize = shoesSize;
  }

  public int getShoeSize() {
    return shoesSize;
  }

  public void setShoeSize(int shoesSize) {
    this.shoesSize = shoesSize;
  }

  @Override
  public String toString() {
    return "Shoes{" + super.toString()+
            " shoesSize=" + shoesSize +
            '}';
  }

  @Override
  public void applyDiscount() {
    this.setPrice(this.getPrice()*(1-DISCOUNT_SHOES));
  }
}
