<template>
    <v-form ref="form">
        <v-row>
            <v-col>
                <v-text-field
                    v-model="instrument.code"
                    :rules="[rules.required]"
                    label="Code"
                ></v-text-field>
            </v-col>
            <v-col>
                <v-text-field
                    v-model="instrument.name"
                    :rules="[rules.required]"
                    label="Name"
                ></v-text-field>
            </v-col>
        </v-row>
        <v-row>
            <v-col>
                <v-select
                    v-model="instrument.typeId"
                    :rules="[rules.required]"
                    :items="types"
                    item-title="name"
                    item-value="id"
                    label="Type"
                    clearable
                >
                </v-select>
            </v-col>
            <v-col>
                <v-text-field
                    v-model="instrument.mark"
                    :rules="[rules.required]"
                    label="Mark"
                ></v-text-field>
            </v-col>
        </v-row>
        <v-row>
            <v-col>
                <v-text-field
                    v-model="instrument.price"
                    @keydown="validateDigit"
                    :rules="[rules.required]"
                    label="Price"
                    type="number"
                    min="0"
                ></v-text-field>
            </v-col>
            <v-col>
                <v-text-field
                    v-model="instrument.quantity"
                    @keydown="validateDigit"
                    :rules="[rules.required]"
                    label="Quantity"
                    type="number"
                    min="0"
                ></v-text-field>
            </v-col>
        </v-row>
        <v-row>
            <v-col>
                <v-textarea
                    v-model="instrument.description"
                    :rules="[rules.required]"
                    label="Description"
                    maxlength="2000"
                    counter
                ></v-textarea>
            </v-col>
        </v-row>
    </v-form>
</template>

<script setup>
import { ref, defineModel, computed } from "vue";

defineProps(["types"]);

const form = ref(null);
const instrument = defineModel();

const rules = {
    required: (value) => Boolean(value) || "Required",
};

function validateDigit(event) {
    if (event.key === "Backspace" || event.key === ".") {
        return;
    }

    if (event.key === " " || isNaN(Number(event.key))) {
        event.preventDefault();
    }
}

async function validate() {
    const { valid } = await form.value.validate();
    return valid;
}

function reset() {
    form.value.reset();
}

const isValid = computed(() => {
    return form.value ? form.value.isValid : false;
});

defineExpose({
    isValid,
    validate,
    reset,
});
</script>

<style scoped></style>
