package com.example.flutter_lab.infrastructure.system.repository

import com.example.flutter_lab.domain.location.entity.Location
import com.example.flutter_lab.domain.location.repository.LocationRepository

class SystemLocationRepository : LocationRepository {
    override suspend fun get(): Location {
        return Location(
            latitude = 35.6895,
            longitude = 139.6917
        )
    }
}