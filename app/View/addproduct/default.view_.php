<div class="products_container">
    <form style="" id="container_form" action=""  method="post" enctype="application/x-www-form-urlencoded">
        <div class="head_list"><!-- Div for holding add and mass delete buttons -->
            <div id="head_word">
                <h1>Product List</h1>
            </div>
            <div id="add_delete_container">
                <button id="addbtn" type="button" onclick='window.location.assign("products/addproduct")'>ADD</button>
                <input value="MASS DELETE" type="submit" id="mass_delete" name="mass_delete">
            </div>
        </div>
        <hr>
        <div id="product_list_container">
            <?php if(false !== $products): foreach ($products as $product): ?>
            <div id="product_box">
                <?php if(null != ($product->weight)): 
                    $unit =  'Weight: ' .$product->weight. 'KG';
                    ?>
                <?php endif;?>
                <?php if(null != ($product->dimensions)): 
                    $unit = 'Dimensions: '.$product->dimensions;
                    ?>
                <?php endif;?>
                <?php if(null != ($product->size)): 
                    $unit =  'Size: '. $product->size . ' MB';
                    ?>
                <?php endif;?>
                <div>
                    <input style="text-align: start;" name='checkboxMDelete[]' class='delete_checkbox' id="checkboxMDelete" type="checkbox"  value="<?= $product->getID(); ?>" />
                </div>
                <p><?= $product->getsku(); ?></p>
                <p><?= $product->getName(); ?></p>
                <p><?= $product->getPrice() . ' $';?></p>
                <p><?= $unit ?></p>
            </div>
            <?php endforeach; endif;?>
        </div>
    </form>
</div>
