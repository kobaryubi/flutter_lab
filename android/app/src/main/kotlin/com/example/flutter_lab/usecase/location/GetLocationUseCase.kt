package com.example.flutter_lab.usecase.location

import com.example.flutter_lab.domain.location.entity.Location
import com.example.flutter_lab.domain.location.repository.LocationRepository

class GetLocationUseCase(
    private val locationRepository: LocationRepository
) {
    suspend operator fun invoke(): Location {
        return locationRepository.get()
    }
}
