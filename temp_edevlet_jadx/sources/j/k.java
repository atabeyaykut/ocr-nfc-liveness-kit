package j;

import android.net.Uri;
import j.h;

/* loaded from: classes.dex */
public final class k implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f7945a;

    /* renamed from: b, reason: collision with root package name */
    public final p.k f7946b;

    public static final class a implements h.a<Uri> {
        @Override // j.h.a
        public final h a(Object obj, p.k kVar) {
            Uri uri = (Uri) obj;
            if (kotlin.jvm.internal.h.a(uri.getScheme(), "android.resource")) {
                return new k(uri, kVar);
            }
            return null;
        }
    }

    public k(Uri uri, p.k kVar) {
        this.f7945a = uri;
        this.f7946b = kVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e2  */
    @Override // j.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super j.g> r11) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j.k.a(p9.d):java.lang.Object");
    }
}
