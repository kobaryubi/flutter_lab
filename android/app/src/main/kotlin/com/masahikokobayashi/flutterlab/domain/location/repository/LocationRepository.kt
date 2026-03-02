package com.masahikokobayashi.flutterlab.domain.location.repository

import com.masahikokobayashi.flutterlab.domain.location.entity.Location

interface LocationRepository {
    suspend fun get(): Location
}
