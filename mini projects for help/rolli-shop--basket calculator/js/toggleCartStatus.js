let isAdded = false;
function toggleCartStatus(){
    const cartWrapper = document.querySelector(".cart-wrapper");
    const cartEmptyBadge = document.querySelector('[data-cart-empty]');

    const orderForm = document.querySelector('#order-form');

    const length = cartWrapper.children.length;
    if(length > 0 && isAdded ==false){
        cartEmptyBadge.classList.add("none");
        isAdded = true;
        console.log("sdfsdf");

        orderForm.classList.remove('none');

    }else if(length == 0 && isAdded ==true){
        cartEmptyBadge.classList.remove("none");
        isAdded = false;

        orderForm.classList.add('none');
        console.log("sdfsdf");

    }
}