const btnMinus = document.querySelector('[data-action="minus"]');
const btnPlus = document.querySelector('[data-action="plus"]');

const counter = document.querySelector('[data-counter]')

window.addEventListener('click', function (event) {

    let counter;

    if (event.target.dataset.action === 'plus' || event.target.dataset.action === 'minus') {
        const counterWrapper = event.target.closest(".counter-wrapper");
        counter = counterWrapper.querySelector('[data-counter');
    }
    if (event.target.dataset.action === 'plus') {
        counter.innerText = ++counter.innerText;


    }else if(event.target.closest(".cart-wrapper")){
        //Show Total Price
        calcCartPricejAndDelivery();
    }

    if (event.target.dataset.action === 'minus') {


        if (+counter.innerText >= 2) {
            counter.innerText = --counter.innerText;

        }else if(event.target.closest(".cart-wrapper") && counter.innerText == '1'){
            //remove item from cart 
            event.target.closest(".cart-item").remove();
           //Show Total Price
           calcCartPricejAndDelivery()           
            //Show basket Status
            toggleCartStatus();
        }
    }


    if(event.target.hasAttribute('data-action') && event.target.closest('.cart-wrapper')){
           //Show Total Price
           calcCartPricejAndDelivery()
    }


});




// btnMinus.addEventListener('click', function(){
//     if(+counter.innerText >= 2){
//         counter.innerText = --counter.innerText;
//     }

// })

// btnPlus.addEventListener('click', function(){
//     counter.innerText = ++counter.innerText;
// })