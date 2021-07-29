const productTemplate = `
<div class="row">
    <div class="col-3 col-md-2">
        <div class="cart-item-img div-as-image" style="background-image: url('{{productImage}}');"></div> 
    </div>
    <div class="col-3 col-md-4">
        <h4 class="product-name"><strong>{{productName}}</strong></h4><h4>
    </div>
    <div class="col-2">
        <div class="text-center cart-price">
            <h6><strong>{{productPrice}}</strong></h6>
        </div>
        <div>
            <div class="prod-qtty-handler">
                <button class="decrement-btn">-</button>
                <span>{{qtty}}</span>
                <button class="increment-btn">+</button>
            </div>
        </div>
    </div>
    <div class="col-2 d-flex flex-column align-items-start">
        <button type="button" class="btn btn-link btn-xs text-success update-product-button">
            <i class="fa fa-refresh" aria-hidden="true"></i>
        </button>
        <button type="button" class="btn btn-link btn-xs text-danger rm-product-button">
            <i class="fa fa-trash-o" aria-hidden="true"></i>
        </button>
    </div>
    <hr>
</div>
`;
$(function() {
    var unslider = $('.banner').unslider({
        autoplay: true,           //  Automatically start the slideshow 							[default: false]
        // speed: 1000,              //  The speed to animate each slide (in milliseconds) 		[default: 750]
        delay: 4000,              //  The delay between slide animations (in milliseconds)	[default: 3000]
        nav: true,                //  Generate an automatic clickable navigation for each slide in your slider [default: true]
        infinite: true,
        arrows: false,             //  Show the nav arrows [default: false]
        dots: true,
        keys: true,
    });

    $('.unslider-arrow').click(function() {
        var fn = this.className.split(' ')[1];
        unslider.data('unslider')[fn]();
    });

    const showMessage = (message, infoType, iconId) => {
        const alertEl = $('.custom-alert');
        alertEl.addClass('alert-' + infoType);
        alertEl.find('.alert-message').text(message);
        alertEl.find('.alert-icon use').attr({
            'xlink:href': '#' + iconId,
        });
        alertEl.fadeIn();
        setTimeout(() => messageDimiss(), 3000);
    }

    const messageDimiss = () => {
        const alertEl = $('.custom-alert');
        alertEl.fadeOut(1000, () => {
            alertEl.removeClass('alert-primary alert-success alert-warning alert-danger');
        });
    }
    const showInfoMessage = message => {
        showMessage(message, 'primary', 'info-fill');
    }
    const showWarningMessage = message => {
        showMessage(message, 'warning', 'exclamation-triangle-fill');
    }
    const showErrorMessage = message => {
        showMessage(message, 'danger', 'exclamation-triangle-fill');
    }
    const showSuccessMessage = message => {
        showMessage(message, 'success', 'check-circle-fill');
    }

    function addToCart(productName, qtty, productPrice, productImage) {
        const productStr = localStorage.getItem('products');
        let product = {productName, qtty, productPrice, productImage };
        let currentProducts = [];
        if (productStr) {
            currentProducts = JSON.parse(productStr);
            const oldProduct = currentProducts.find(p => p.productName === productName);
            product.qtty += (oldProduct ? oldProduct.qtty : 0);
        }
        const productIndex = currentProducts.findIndex(p => p.productName === product.productName);
        if (productIndex > -1)
            currentProducts[productIndex] = product;
        else
            currentProducts.push(product);
        localStorage.setItem('products', JSON.stringify(currentProducts));
    }

    const setProduct = product => {
        const productStr = localStorage.getItem('products');
        
        let currentProducts = [];
        if (productStr) {
            currentProducts = JSON.parse(productStr);
        }
        const productIndex = currentProducts.findIndex(p => p.productName === product.productName);
        if (productIndex > -1)
            currentProducts[productIndex] = product;
        else
            currentProducts.push(product);
        localStorage.setItem('products', JSON.stringify(currentProducts));
    }

    const removeFromCart = productName => {
        const productStr = localStorage.getItem('products');
        if (productStr) {
            currentProducts = JSON.parse(productStr);
            const productIndex = currentProducts.findIndex(p => p.productName === productName);
            currentProducts.splice(Number(productIndex), 1);
            localStorage.setItem('products', JSON.stringify(currentProducts));
        }
    }

    function getProducts() {
        const products = localStorage.getItem('products');
        return products ? JSON.parse(products) : [];
    }

    $('.prod-add-cart .btn').click(event => {
        const qtty = Number($(event.target).parent().parent().find('.prod-qtty-handler span').text());
        const productName = $(event.target).parent().parent().find('h3').text();
        const productPrice = $(event.target).parent().parent().find('.prod-price').text();
        const productImageAttr = $(event.target).parent().parent().find('.product-image').css('background-image');
        const productImage = productImageAttr.replace('url(','').replace(')','').replace(/\"/gi, "");
        addToCart(productName, qtty, productPrice, productImage);
        showSuccessMessage('Adicionado ao carrinho com sucesso');
        $(event.target).parent().parent().find('.prod-qtty-handler span').text('1');
    });

    const multPrice = (priceStr, qtty) => {
        const priceNum = Number(priceStr.replace(/[^0-9]/g, ''));
        const qttyNum = Number(qtty);
        return 'R$ ' + ((priceNum * qttyNum / 100).toFixed(2).toString().replace('.', ','));
    }

    const getProduct = productName => {
        const productStr = localStorage.getItem('products');
        if (productStr) {
            currentProducts = JSON.parse(productStr);
            return currentProducts.find(p => p.productName === productName);
        }
        return null;
    }

    const listProducts = () => {
        const products = getProducts();
        let productHtml = '';
        for (const product of products) {
            productHtml += (productTemplate
                .replace('{{productName}}', product.productName)
                .replace('{{qtty}}', product.qtty.toString())
                .replace('{{productImage}}', product.productImage)
                .replace('{{productPrice}}', multPrice(product.productPrice, product.qtty)));
        }
        $('.cart-panel-body').append(productHtml || 'Não há produtos no carrinho');
    }

    listProducts();

    $('.increment-btn').click(function(event) {
        var incrementedCount = Number($(event.target).parent().find('span').text()) + 1;
        $(event.target).parent().find('span').text(incrementedCount);
    });

    $('.rm-product-button').click(event => {
        const productName = $(event.target).parent().parent().parent().find('.product-name').text();
        $(event.target).parent().parent().parent().remove();
        removeFromCart(productName);
        const products = getProducts();
        showSuccessMessage('Removido do carrinho com sucesso');
        if (!products || !products.length)
            $('.cart-panel-body').append('Não há produtos no carrinho');
    });

    $('.update-product-button').click(event => {
        const productName = $(event.target).parent().parent().parent().find('.product-name').text();
        const qttyStr = $(event.target).parent().parent().parent().find('.prod-qtty-handler span').text();
        const product = getProduct(productName);
        if (product.qtty !== Number(qttyStr)) {
            product.qtty = Number(qttyStr);
            $(event.target).parent().parent().parent().find('.cart-price h6').text(multPrice(product.productPrice, product.qtty));
            setProduct(product);
            showSuccessMessage('Carrinho atualizado com sucesso');
        }
    });

    $('.decrement-btn').click(function(event) {
        var currentCount = Number($(event.target).parent().find('span').text());
        if (currentCount > 1) {
            var decrementedCount = currentCount - 1;
            $(event.target).parent().find('span').text(decrementedCount);
        }
    });
});

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

