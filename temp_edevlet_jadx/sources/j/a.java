package j;

import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import ed.d0;
import ed.v;
import g.n;
import j.h;
import java.io.File;
import java.io.IOException;
import m9.t;

/* loaded from: classes.dex */
public final class a implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f7914a;

    /* renamed from: b, reason: collision with root package name */
    public final p.k f7915b;

    /* renamed from: j.a$a, reason: collision with other inner class name */
    public static final class C0133a implements h.a<Uri> {
        @Override // j.h.a
        public final h a(Object obj, p.k kVar) {
            Uri uri = (Uri) obj;
            Bitmap.Config[] configArr = u.c.f17726a;
            if (kotlin.jvm.internal.h.a(uri.getScheme(), "file") && kotlin.jvm.internal.h.a((String) t.c1(uri.getPathSegments()), "android_asset")) {
                return new a(uri, kVar);
            }
            return null;
        }
    }

    public a(Uri uri, p.k kVar) {
        this.f7914a = uri;
        this.f7915b = kVar;
    }

    @Override // j.h
    public final Object a(p9.d<? super g> dVar) throws IOException {
        Uri uri = this.f7914a;
        String strG1 = t.g1(t.W0(uri.getPathSegments()), "/", null, null, null, 62);
        p.k kVar = this.f7915b;
        d0 d0VarB = v.b(v.f(kVar.f12166a.getAssets().open(strG1)));
        kotlin.jvm.internal.h.c(uri.getLastPathSegment());
        g.a aVar = new g.a();
        Bitmap.Config[] configArr = u.c.f17726a;
        File cacheDir = kVar.f12166a.getCacheDir();
        cacheDir.mkdirs();
        return new l(new n(d0VarB, cacheDir, aVar), u.c.b(MimeTypeMap.getSingleton(), strG1), 3);
    }
}
