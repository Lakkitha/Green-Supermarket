/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ProductManagement;

/**
 *
 * @author OMEN
 */
public class Product 
{
    public static final int CategorySize = 6; // The category size of how products are shown
    
    private int id;
    private String name;
    private String description;
    private float price;
    private int quantity;
    
    public Product(int id, String name, String description, float price, int quantity)
    {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
    }
    
    public int GetID()
    {
        return id;
    }
    
    public String GetName()
    {
        return name;
    }
    
    public String GetDesc()
    {
        return description;
    }
    
    public float GetPrice()
    {
        return price;
    }
    
    public int GetQuantity()
    {
        return quantity;
    }
}
