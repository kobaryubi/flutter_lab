import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("local") {
            dimension = "flavor-type"
            applicationId = "com.masahikokobayashi.flutter_lab.local"
            resValue(type = "string", name = "app_name", value = "Flutter Lab Local")
        }
        create("production") {
            dimension = "flavor-type"
            applicationId = "com.masahikokobayashi.flutter_lab"
            resValue(type = "string", name = "app_name", value = "Flutter Lab")
        }
    }
}