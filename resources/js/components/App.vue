<template>
  <div class="min-h-screen p-6 bg-gray-100">
    <component :is="isLoggedIn ? 'Dashboard' : 'Login'" @loginSuccess="handleLogin" />
  </div>
</template>

<script setup>
import { ref } from 'vue'
import Login from './Login.vue'
import Dashboard from './Dashboard.vue'

const isLoggedIn = ref(false)

function handleLogin() {
  isLoggedIn.value = true
}
</script>
