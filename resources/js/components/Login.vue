<template>
  <div class="max-w-md mx-auto bg-white p-6 rounded-xl shadow">
    <h2 class="text-xl font-bold mb-4">Admin Login</h2>
    <form @submit.prevent="login">
      <input v-model="form.username" placeholder="Username" class="input" />
      <input v-model="form.password" type="password" placeholder="Password" class="input mt-2" />
      <button class="btn mt-4 w-full">Login</button>
      <p v-if="error" class="text-red-600 mt-2">{{ error }}</p>
    </form>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import axios from 'axios'

const form = ref({ username: '', password: '' })
const error = ref('')
const emit = defineEmits(['loginSuccess'])

async function login() {
  error.value = ''
  try {
    const res = await axios.post('/api/login', form.value)
    axios.defaults.headers.common['Authorization'] = `Bearer ${res.data.access_token}`
    emit('loginSuccess')
  } catch {
    error.value = 'Invalid credentials'
  }
}
</script>

<style scoped>
.input { @apply w-full border px-3 py-2 rounded-lg; }
.btn { @apply bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700; }
</style>
