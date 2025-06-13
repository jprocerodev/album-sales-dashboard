<template>
  <div class="space-y-4">
    <h1 class="text-2xl font-bold mb-4">Dashboard</h1>

    <section class="grid grid-cols-3 gap-4">
      <div class="card" v-for="item in albumsData" :key="item.artist">
        <p class="font-semibold">{{ item.artist }}</p>
        <p>Total Albums: {{ item.total_albums }}</p>
      </div>
    </section>

    <section class="grid grid-cols-3 gap-4">
      <div class="card" v-for="item in salesData" :key="item.artist">
        <p class="font-semibold">{{ item.artist }}</p>
        <p>Total Sales: {{ item.total_sales }}</p>
      </div>
    </section>

    <section class="card">
      <h3 class="font-semibold">Top Artist</h3>
      <p>{{ topArtist.artist }} — {{ topArtist.total_sales }} sales</p>
    </section>

    <section class="card">
      <input v-model="search" @input="fetchSearch" placeholder="Search Artist" class="input" />
      <ul class="mt-2">
        <li v-for="album in searchResults" :key="album.id">
          {{ album.name }} — {{ album.artist.name }}
        </li>
      </ul>
    </section>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import axios from 'axios'

const albumsData = ref([])
const salesData = ref([])
const topArtist = ref({})
const search = ref('')
const searchResults = ref([])

async function loadData() {
  albumsData.value = (await axios.get('/api/dashboard/total-albums')).data
  salesData.value = (await axios.get('/api/dashboard/total-sales')).data
  topArtist.value = (await axios.get('/api/dashboard/top-artist')).data
}

async function fetchSearch() {
  const res = await axios.get('/api/dashboard/search-albums', { params: { artist: search.value } })
  searchResults.value = res.data
}

onMounted(loadData)
</script>

<style scoped>
.card { @apply bg-white p-4 rounded-xl shadow; }
.input { @apply w-full border px-3 py-2 rounded-lg; }
</style>

<template>
  <div class="p-6">
    <div class="flex justify-between items-center mb-6">
      <h1 class="text-2xl font-bold">Dashboard</h1>
      <button @click="logout" class="bg-red-600 text-white px-4 py-2 rounded hover:bg-red-700">Logout</button>
    </div>

    <!-- Add your dashboard contents here -->
  </div>
</template>

<script>
export default {
  methods: {
    async logout() {
      try {
        const token = localStorage.getItem('token')
        const res = await fetch('http://localhost:8000/api/logout', {
          method: 'POST',
          headers: {
            'Authorization': `Bearer ${token}`,
            'Content-Type': 'application/json'
          }
        })

        if (res.ok) {
          localStorage.removeItem('token')
          window.location.href = '/login'
        } else {
          alert('Logout failed')
        }
      } catch (err) {
        console.error(err)
        alert('Logout error')
      }
    }
  }
}
</script>
