Pod::Spec.new do |spec|

    spec.name         = "GDALiOSNOLFS"
    spec.version      = "1.0.5"
    spec.summary      = "GDAL for iOS."
    spec.homepage     = "https://luismdeveloper.com"
    spec.license      = "MIT"
    spec.author       = { "Luis Manuel Ramirez Vargas" => "Luis_Manuel.Ramirez_Vargas@syngenta.com" }
    spec.source       = { :git => "https://github.com/LuisManuelRamirezVargas/GDAL-iOS-LFS-Free.git", :tag => "#{spec.version}" }

    spec.source_files   = "include/**/*.h"
    spec.vendored_libraries = 'lib/libgdal.a', 'lib/libgdal-sim.a', 'lib/libproj.a'

    spec.pod_target_xcconfig = {
        "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphoneos*]" => "libgdal-sim.a",
        "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphonesimulator*]" => "libgdal.a"
    }
end
