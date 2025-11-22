package r8;

import java.io.InputStream;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f14339b = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f14340c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: a, reason: collision with root package name */
    public final a f14341a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final InputStream f14342a;

        public a(InputStream inputStream) {
            this.f14342a = inputStream;
        }
    }

    public d(InputStream inputStream) {
        this.f14341a = new a(inputStream);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00cf, code lost:
    
        r2 = r3.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d3, code lost:
    
        android.util.Log.d("ImageHeaderParser", r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: r8.d.a():int");
    }
}
