package e1;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import e1.s;
import java.io.IOException;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class v implements v0.j<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final m f5088a;

    public v(m mVar) {
        this.f5088a = mVar;
    }

    @Override // v0.j
    public final boolean a(@NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull v0.h hVar) throws IOException {
        ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
        String str = Build.MANUFACTURER;
        if (!(!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor2.getStatSize() <= 536870912)) {
            return false;
        }
        this.f5088a.getClass();
        return "robolectric".equals(Build.FINGERPRINT) ^ true;
    }

    @Override // v0.j
    @Nullable
    public final x0.w<Bitmap> b(@NonNull ParcelFileDescriptor parcelFileDescriptor, int r82, int r92, @NonNull v0.h hVar) throws IOException {
        m mVar = this.f5088a;
        return mVar.a(new s.c(parcelFileDescriptor, mVar.f5060d, mVar.f5059c), r82, r92, hVar, m.f5055k);
    }
}
