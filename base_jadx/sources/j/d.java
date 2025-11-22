package j;

import android.net.Uri;
import j.h;

/* loaded from: classes.dex */
public final class d implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f7920a;

    /* renamed from: b, reason: collision with root package name */
    public final p.k f7921b;

    public static final class a implements h.a<Uri> {
        @Override // j.h.a
        public final h a(Object obj, p.k kVar) {
            Uri uri = (Uri) obj;
            if (kotlin.jvm.internal.h.a(uri.getScheme(), "content")) {
                return new d(uri, kVar);
            }
            return null;
        }
    }

    public d(Uri uri, p.k kVar) {
        this.f7920a = uri;
        this.f7921b = kVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0106  */
    @Override // j.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super j.g> r12) throws java.io.FileNotFoundException {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j.d.a(p9.d):java.lang.Object");
    }
}
