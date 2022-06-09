<template>
    <div>
        <div class="field">
            <label for="" class="label">Product Name</label>
            <div class="control">
                <input type="text" class="input" placeholder="Product Name" v-model="productName">
            </div>
        </div>

        <div class="field">
            <label for="" class="label">Price</label>
            <div class="control">
                <input type="text" class="input" placeholder="Price" v-model="productPrice">
            </div>
        </div>    

        <div class="control">
            <button class="button is-success" @click="saveProduct">SAVE</button>
        </div>
    </div>
</template>

<script>
// import axios
import axios from "axios";

export default {
    name: "AddProduct",
    data() {
        return {
            productName: "",
            productPrice: "",
        };
    },

    methods: {
        // Create New product
        async saveProduct() {
            try {
                await axios.post("http://localhost:5000/products", {
                    product_name: this.productName,
                    product_price: this.productPrice,
                });
                this.productName = "";
                this.productPrice = "";
                this.$router.push("/");
            } catch (err) {
                console.log(err);
            }
        },
    },
};
</script>
<style lang="">
</style>