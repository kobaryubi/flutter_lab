import Flutter
import MapKit
import UIKit

/// Platform view controller that displays a MapKit map view
final class MapView: NSObject, FlutterPlatformView, MKMapViewDelegate {
  // MARK: - Properties
  
  private let mapView: MKMapView
  
  // MARK: - Initialization
  
  init(
    frame: CGRect,
    viewIdentifier viewId: Int64,
    arguments args: Any?,
    binaryMessenger messenger: FlutterBinaryMessenger?
  ) {
    self.mapView = MKMapView(frame: frame)
    super.init()
    
    // Set the delegate
    mapView.delegate = self
    
    // Configure the map view
    configureMapView(with: args)
  }
  
  // MARK: - FlutterPlatformView
  
  func view() -> UIView {
    return mapView
  }
  
  // MARK: - Private Methods
  
  private func configureMapView(with arguments: Any?) {
    guard let args = arguments as? [String: Any],
          let latitude = args["latitude"] as? CLLocationDegrees,
          let longitude = args["longitude"] as? CLLocationDegrees else {
      return
    }
    
    // Create coordinate and region
    let center = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    let span = MKCoordinateSpan(latitudeDelta: 36, longitudeDelta: 72)
    let region = MKCoordinateRegion(center: center, span: span)
    
    // Set the region on the map
    mapView.setRegion(region, animated: true)
    
    // Add a pin annotation at the center
    let annotation = MKPointAnnotation()
    annotation.coordinate = center
    annotation.title = "Location"
    mapView.addAnnotation(annotation)
  }
}
