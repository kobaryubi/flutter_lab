package com.example.flutter_lab.usecase.location

import com.example.flutter_lab.domain.location.entity.Location
import com.example.flutter_lab.domain.location.repository.LocationRepository

class GetLocationUseCase(
    private val locationRepository: LocationRepository
) {
    suspend operator fun invoke(): Location {
        // if (ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
        //     ActivityCompat.requestPermissions(this, arrayOf(Manifest.permission.ACCESS_FINE_LOCATION), 1)
        //     return ""
        // }
        return locationRepository.get()
    }
}
