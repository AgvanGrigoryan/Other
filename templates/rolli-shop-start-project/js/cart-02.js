const cartWrapper = document.querySelector(".cart-wrapper");

window.addEventListener('click', function (event){
    if(event.target.hasAttribute("data-cart")){
        const card = event.target.closest(".card");

        //product data
        const productInfo = {
            id: card.dataset.id,
            imgSrc: card.querySelector(".product-img").getAttribute("src"),
            title: card.querySelector(".item-title").innerText,
            itemsInBox: card.querySelector("[data-items-in-box]").innerText,
            weight: card.querySelector(".price__weight").innerText,
            price: card.querySelector(".price__currency").innerText,
            counter: card.querySelector("[data-counter]").innerText,
        }

		//check if there is already such a product in the cart
		const itemInCart = cartWrapper.querySelector(`[data-id="${productInfo.id}"]`);


		if(itemInCart !== null){
			const counterEl = itemInCart.querySelector("[data-counter]");
			counterEl.innerText = +counterEl.innerText + +productInfo.counter;
		}else{
			//filling out the product template
			const cartItemHTML = `<div class="cart-item" data-id="${productInfo.id}">
									<div class="cart-item__top">
										<div class="cart-item__img">
											<img src="${productInfo.imgSrc}" alt="${productInfo.title}">
										</div>
										<div class="cart-item__desc">
											<div class="cart-item__title">${productInfo.title}</div>
											<div class="cart-item__weight">${productInfo.itemsinBox} / ${productInfo.weight}</div>

											<!-- cart-item__details -->
											<div class="cart-item__details">

												<div class="items items--small counter-wrapper">
													<div class="items__control" data-action="minus">-</div>
													<div class="items__current" data-counter="">${productInfo.counter}</div>
													<div class="items__control" data-action="plus">+</div>
												</div>

												<div class="price">
													<div class="price__currency">${productInfo.price}</div>
												</div>

											</div>
											<!-- // cart-item__details -->

										</div>
									</div>
								</div>`;
			//Show in basket
			cartWrapper.insertAdjacentHTML('beforeend', cartItemHTML);

            //Show Total Price
            calcCartPricejAndDelivery();

			//Show basket Status
			toggleCartStatus();
		}

		//reset the counter
		card.querySelector("[data-counter]").innerText = '1';
    }
})