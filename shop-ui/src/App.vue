<template>
    <TheSnackbar ref="theSnack"></TheSnackbar>
    <v-app>
        <v-main>
            <TheHeader @menu-clicked="drawer = !drawer"></TheHeader>
            <TheSidebar v-model="drawer"></TheSidebar>
            <div class="main-container">
                <router-view v-slot="{ Component, route }">
                    <transition name="fade">
                        <div :key="route.path">
                            <component :is="Component" />
                        </div>
                    </transition>
                </router-view>
            </div>
        </v-main>
    </v-app>
</template>

<script setup>
import axios from "axios";
import { ref, provide, onMounted } from "vue";

const drawer = ref(true);
const theSnack = ref(null);

function defaultErrorSnackbar(error) {
    theSnack.value.show(error.response.data.message, -1, "red-darken-1", "");
}

axios.defaults.headers.common["Authorization"] =
    "Bearer " + localStorage.getItem("token");

onMounted(() => {
    provide("snackbar", theSnack.value.show);
    provide("defaultErrorSnackbar", defaultErrorSnackbar);
});
</script>

<style scoped>
.main-container {
    padding: 2%;
}

.fade-enter-active {
    transition: opacity 0.3s ease;
    transition-delay: 0.3s;
}

.fade-leave-active {
    transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}
</style>
