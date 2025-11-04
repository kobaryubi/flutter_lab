package com.example.flutter_lab.domain.location.repository

import com.example.flutter_lab.domain.location.entity.Location

interface LocationRepository {
    suspend fun get(): Location
}
