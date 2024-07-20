import { ref } from "vue";
import axios from "axios";
import { environment } from "@/environment/environment";

function getDefaultState() {
    return {
        data: [],
        totalElements: 0,
        totalPages: 0,
    };
}

const availableInstruments = ref(getDefaultState());
const availableUrl = `${environment.apiUrl}/available-instruments`;

function fetchAvailableInstruments(page, size, errorCallback) {
    const pageUrl = `${availableUrl}?page=${page}&size=${size}`;
    axios
        .get(pageUrl)
        .then((response) => {
            availableInstruments.value.data.push(...response.data.data);
            availableInstruments.value.totalElements =
                response.data.totalElements;
            availableInstruments.value.totalPages = response.data.totalPages;
        })
        .catch(errorCallback);
}

function clear() {
    availableInstruments.value = getDefaultState();
}

export { availableInstruments, fetchAvailableInstruments, clear };
