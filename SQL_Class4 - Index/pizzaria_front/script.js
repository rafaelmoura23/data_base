const cartItemsElement = document.getElementById('cart-items');
const totalElement = document.getElementById('total');

let cart = [];

function addToCart(name, price) {
    cart.push({ name, price });
    renderCart();
}

function removeFromCart(index) {
    cart.splice(index, 1);
    renderCart();
}

function renderCart() {
    cartItemsElement.innerHTML = '';
    let total = 0;
    cart.forEach((item, index) => {
        const li = document.createElement('li');
        li.textContent = `${item.name} - R$ ${item.price}`;
        const removeButton = document.createElement('button');
        removeButton.textContent = 'Remover';
        removeButton.addEventListener('click', () => {
            removeFromCart(index);
        });
        li.appendChild(removeButton);
        cartItemsElement.appendChild(li);
        total += parseFloat(item.price);
    });
    totalElement.textContent = `Total: R$ ${total.toFixed(2)}`;
}

document.getElementById('checkout').addEventListener('click', () => {
    alert('Pedido finalizado! Total: R$ ' + totalElement.textContent.split(' ')[1]);
    cart = [];
    renderCart();
});

renderCart();
