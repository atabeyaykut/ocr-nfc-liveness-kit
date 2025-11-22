package androidx.camera.extensions.internal;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public class VersionName {
    private static final VersionName CURRENT = new VersionName("1.1.0");
    private final Version mVersion;

    public VersionName(int r12, int r22, int r32, String str) {
        this.mVersion = Version.create(r12, r22, r32, str);
    }

    public VersionName(@NonNull String str) {
        this.mVersion = Version.parse(str);
    }

    @NonNull
    public static VersionName getCurrentVersion() {
        return CURRENT;
    }

    @NonNull
    public Version getVersion() {
        return this.mVersion;
    }

    @NonNull
    public String toVersionString() {
        return this.mVersion.toString();
    }
}
