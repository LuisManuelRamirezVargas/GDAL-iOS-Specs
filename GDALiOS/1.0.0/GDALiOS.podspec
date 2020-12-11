Pod::Spec.new do |spec|

    spec.name         = "GDALiOS"
    spec.version      = "1.0.0"
    spec.summary      = "GDAL for iOS."
    spec.homepage     = "https://luismdeveloper.com"
    spec.license      = "MIT"
    spec.author       = { "Luis Manuel Ramirez Vargas" => "Luis_Manuel.Ramirez_Vargas@syngenta.com" }
    spec.source       = { :git => "https://github.com/LuisManuelRamirezVargas/GDAL-iOS.git", :tag => "#{spec.version}" }

    spec.source_files   = "include/**/*.h"
    spec.vendored_libraries = 'lib/libgdal.a', 'lib/libproj.a'

end
