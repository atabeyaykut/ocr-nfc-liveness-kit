package b1;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class v<Data> implements o<String, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final o<Uri, Data> f1079a;

    public static final class a implements p<String, AssetFileDescriptor> {
        @Override // b1.p
        public final o<String, AssetFileDescriptor> a(@NonNull s sVar) {
            return new v(sVar.c(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class b implements p<String, ParcelFileDescriptor> {
        @Override // b1.p
        @NonNull
        public final o<String, ParcelFileDescriptor> a(@NonNull s sVar) {
            return new v(sVar.c(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class c implements p<String, InputStream> {
        @Override // b1.p
        @NonNull
        public final o<String, InputStream> a(@NonNull s sVar) {
            return new v(sVar.c(Uri.class, InputStream.class));
        }
    }

    public v(o<Uri, Data> oVar) {
        this.f1079a = oVar;
    }

    @Override // b1.o
    public final /* bridge */ /* synthetic */ boolean a(@NonNull String str) {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
    @Override // b1.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final b1.o.a b(@androidx.annotation.NonNull java.lang.String r4, int r5, int r6, @androidx.annotation.NonNull v0.h r7) {
        /*
            r3 = this;
            java.lang.String r4 = (java.lang.String) r4
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 == 0) goto Lb
            r0 = r1
            goto L28
        Lb:
            r0 = 0
            char r0 = r4.charAt(r0)
            r2 = 47
            if (r0 != r2) goto L15
            goto L1f
        L15:
            android.net.Uri r0 = android.net.Uri.parse(r4)
            java.lang.String r2 = r0.getScheme()
            if (r2 != 0) goto L28
        L1f:
            java.io.File r0 = new java.io.File
            r0.<init>(r4)
            android.net.Uri r0 = android.net.Uri.fromFile(r0)
        L28:
            if (r0 == 0) goto L37
            b1.o<android.net.Uri, Data> r4 = r3.f1079a
            boolean r2 = r4.a(r0)
            if (r2 != 0) goto L33
            goto L37
        L33:
            b1.o$a r1 = r4.b(r0, r5, r6, r7)
        L37:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b1.v.b(java.lang.Object, int, int, v0.h):b1.o$a");
    }
}
