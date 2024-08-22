```xml
<!-- AndroidManifest.xml  -->
<provider
    android:name="androidx.core.content.FileProvider"
    android:authorities="${applicationId}.fileprovider"
    android:exported="false"
    android:grantUriPermissions="true">
    <meta-data android:name="android.support.FILE_PROVIDER_PATHS" android:resource="@xml/file_paths" />
</provider>
<!-- res/xml/file_paths.xml -->
<?xml version="1.0" encoding="utf-8"?>
<paths xmlns:android="http://schemas.android.com/apk/res/android">
    <external-path name="my_images" path="." />
    <external-path name="external_files" path="."/>
    <cache-path name="my_cache_images" path="." />
</paths>
```

```java
// filename+'.fileprovider' -> android:authorities="${applicationId}.fileprovider"
FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", new File(filePath));
// filename+'.provider' -> android:authorities="${applicationId}.provider"
FileProvider.getUriForFile(context, context.getPackageName() + ".provider", new File(filePath));
```