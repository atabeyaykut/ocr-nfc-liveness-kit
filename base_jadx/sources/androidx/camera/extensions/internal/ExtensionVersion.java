package androidx.camera.extensions.internal;

import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.Logger;
import androidx.camera.extensions.impl.ExtensionVersionImpl;

@RequiresApi(21)
/* loaded from: classes.dex */
public abstract class ExtensionVersion {
    private static final String TAG = "ExtenderVersion";
    private static volatile ExtensionVersion sExtensionVersion;

    public static class DefaultExtenderVersioning extends ExtensionVersion {
        @Override // androidx.camera.extensions.internal.ExtensionVersion
        public Version getVersionObject() {
            return null;
        }

        @Override // androidx.camera.extensions.internal.ExtensionVersion
        public boolean isAdvancedExtenderSupportedInternal() {
            return false;
        }
    }

    public static class VendorExtenderVersioning extends ExtensionVersion {
        private static ExtensionVersionImpl sImpl;
        private Version mRuntimeVersion;

        public VendorExtenderVersioning() {
            if (sImpl == null) {
                sImpl = new ExtensionVersionImpl();
            }
            Version version = Version.parse(sImpl.checkApiVersion(VersionName.getCurrentVersion().toVersionString()));
            if (version != null && VersionName.getCurrentVersion().getVersion().getMajor() == version.getMajor()) {
                this.mRuntimeVersion = version;
            }
            Logger.d(ExtensionVersion.TAG, "Selected vendor runtime: " + this.mRuntimeVersion);
        }

        @Override // androidx.camera.extensions.internal.ExtensionVersion
        public Version getVersionObject() {
            return this.mRuntimeVersion;
        }

        @Override // androidx.camera.extensions.internal.ExtensionVersion
        public boolean isAdvancedExtenderSupportedInternal() {
            try {
                return sImpl.isAdvancedExtenderImplemented();
            } catch (NoSuchMethodError unused) {
                return false;
            }
        }
    }

    private static ExtensionVersion getInstance() {
        if (sExtensionVersion != null) {
            return sExtensionVersion;
        }
        synchronized (ExtensionVersion.class) {
            if (sExtensionVersion == null) {
                try {
                    sExtensionVersion = new VendorExtenderVersioning();
                } catch (NoClassDefFoundError unused) {
                    Logger.d(TAG, "No versioning extender found. Falling back to default.");
                    sExtensionVersion = new DefaultExtenderVersioning();
                }
            }
        }
        return sExtensionVersion;
    }

    @Nullable
    public static Version getRuntimeVersion() {
        return getInstance().getVersionObject();
    }

    public static boolean isAdvancedExtenderSupported() {
        return getInstance().isAdvancedExtenderSupportedInternal();
    }

    public static boolean isExtensionVersionSupported() {
        return getInstance().getVersionObject() != null;
    }

    public abstract Version getVersionObject();

    public abstract boolean isAdvancedExtenderSupportedInternal();
}
