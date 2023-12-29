
// A function to set a cart item
function setCartItem(id, name, type, quantity, price, subtotal)
{
    // declare json object
    var jsonData = {
      itemID: id,
      itemName: name,
      itemType: type,
      itemQuantity: quantity,
      itemPrice: price,
      itemSubTotal: subtotal
    };
    
    // Check for current cart items
    let currentCartItems = localStorage.getItem("cart");
    
    // If it's null we set a new list
    if (currentCartItems === null)
    {
        var cartItems = [];
        cartItems.push(jsonData);
        
        localStorage.setItem("cart", JSON.stringify(cartItems));
    }
    // if not null push this item to the current cart list
    else
    {
        currentCartItems = JSON.parse(currentCartItems);
        itemPresent = false;
        
        // if the current item is present with matching id, then simply edit the contents instead of pushing
        for (let x in currentCartItems)
        {
            // If it's not there in the list don't return anything
            if (id === currentCartItems[x].itemID)
            {
                itemPresent = true;
                
                currentCartItems[x].itemName = name;
                currentCartItems[x].itemType = type;
                currentCartItems[x].itemQuantity += quantity;
                currentCartItems[x].itemPrice = price;
                currentCartItems[x].itemSubTotal += subtotal;
                
                break;
            }
        }
        
        if (!itemPresent)
        {
            currentCartItems.push(jsonData);
        }
        
        localStorage.setItem("cart", JSON.stringify(currentCartItems));
    }
}

// function that adds the cart items to the HTML page
function addCartItems()
{
    let currentCartItems = localStorage.getItem("cart");
    
    if (currentCartItems === null)
    {
        // Do nothing
    }
    else
    {
        currentCartItems = JSON.parse(currentCartItems); // Convert to an object
        var cartContainer = document.querySelector(".cart-items");
        
        console.log(currentCartItems);
        
        for (let x in currentCartItems)
        {
            const cartItemHTML = `
                <tr>
                    <td class="product-details">
                        <input type="hidden" class="js-product-id" name="product-id" value=""/>
                        <img src="Images/${currentCartItems[x].itemType}_Images/${currentCartItems[x].itemName}.jpg" alt="${currentCartItems[x].itemName}" class="product-image">
                        <div class="product-description">
                            <strong>${currentCartItems[x].itemName}</strong><br />
                            <small>${currentCartItems[x].itemType}</small><br />
                            <button class="remove-button remove-button-${x}">Remove</button>
                        </div>
                    </td>
                    <td class="quantity">${currentCartItems[x].itemQuantity}</td>
                    <td class="price">$${currentCartItems[x].itemPrice}</td>
                    <td class="subtotal">$${currentCartItems[x].itemSubTotal}</td>
                </tr>
            `;      
            
            cartContainer.innerHTML += cartItemHTML;
        }
 
    }
}

// function that removes a specific object with a given ID
function removeItemFromCart(itemID)
{
    let currentCartItems = localStorage.getItem("cart");
    
    // Check if cart isn't null or empty
    if (currentCartItems !== null)
    {
        currentCartItems = JSON.parse(currentCartItems); // Convert to object

        for (let x in currentCartItems)
        {
            // match item with id
            if (itemID === currentCartItems[x].itemID)
            {
                // remove the item
                console.log(currentCartItems[x].itemName + " is removed");
                currentCartItems.splice(x, 1);
                
                localStorage.setItem("cart", JSON.stringify(currentCartItems));
                
                location.reload();

                break;
            }
        }
        
        if (currentCartItems.length === 0)
        {
            removeAllItemsFromCart();
        }
    }
}

function removeAllItemsFromCart()
{
    let currentCartItems = localStorage.getItem("cart");
    
    if (currentCartItems !== null)
    {
        currentCartItems.length = 0;
        localStorage.removeItem("cart");
    }
}

function cartTotal()
{
    let currentCartItems = localStorage.getItem("cart");
    var total = 0;
    
    if (currentCartItems !== null)
    {
        currentCartItems = JSON.parse(currentCartItems);
        
        for (let x in currentCartItems)
        {
            total += currentCartItems[x].itemSubTotal;
        }
    }
    
    return total;
}

function noOfCartItems()
{
    let currentCartItems = localStorage.getItem("cart");
    var items = 0;
    
    if (currentCartItems !== null)
    {
        currentCartItems = JSON.parse(currentCartItems);
        
        items = currentCartItems.length;
    }
    
    return items;
}

// A function that checks localStorage product quantity that is available for the user
function getLocalProductQuantity(productItem)
{
    let currentCartItems = localStorage.getItem("cart");
    let localQuantity = productItem.quantity;
    
    if (currentCartItems !== null)
    {
        currentCartItems = JSON.parse(currentCartItems);
        
        // Get current product quantity
        for (let x in currentCartItems)
        {
            // If it's not there in the list don't return anything
            if (productItem.id === currentCartItems[x].itemID)
            {
                localQuantity = (currentCartItems[x].quantity >= productItem.quantity? 
                        productItem.quantity : productItem.quantity - currentCartItems[x].itemQuantity);
                        
                return localQuantity;
            }
        }
    }
        
    return localQuantity;
}
