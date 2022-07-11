const totalPriceEl = document.querySelector(".total-price");
const deliveryCostEl = document.querySelector(".delivery-cost");
const CartDeliveryEl = document.querySelector("[data-cart-delivery]")
function calcCartPricejAndDelivery() {
    const cartItems = document.querySelectorAll(".cart-item");

    let totalPrice = 0;

    cartItems.forEach(function (item) {
        const amountEl = item.querySelector("[data-counter]");
        const priceEl = item.querySelector(".price__currency");
        const currentPrice = parseInt(amountEl.innerText) * parseInt(priceEl.innerText);
        totalPrice +=currentPrice;
    });


    if (totalPrice> 0) {
        CartDeliveryEl.classList.remove("none");
    }else{
        CartDeliveryEl.classList.add("none");
    }

    if(totalPrice >= 600){

        deliveryCostEl.classList.add('free');
        deliveryCostEl.innerText = "Бесплатно";
    }else{
        deliveryCostEl.classList.remove('free');
        deliveryCostEl.innerText = "250 ₽";
    }
    let deliveryPrice = isNaN(parseInt(deliveryCostEl.innerText)) ? 0 : parseInt(deliveryCostEl.innerText);
    totalPriceEl.innerText = totalPrice + deliveryPrice;

}