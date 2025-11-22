package j;

import android.webkit.MimeTypeMap;
import ed.z;
import j.h;
import java.io.File;
import mc.n;

/* loaded from: classes.dex */
public final class i implements h {

    /* renamed from: a, reason: collision with root package name */
    public final File f7927a;

    public static final class a implements h.a<File> {
        @Override // j.h.a
        public final h a(Object obj, p.k kVar) {
            return new i((File) obj);
        }
    }

    public i(File file) {
        this.f7927a = file;
    }

    @Override // j.h
    public final Object a(p9.d<? super g> dVar) {
        String str = z.f5363b;
        File file = this.f7927a;
        g.k kVar = new g.k(z.a.b(file), ed.k.f5332a, null, null);
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String name = file.getName();
        kotlin.jvm.internal.h.e(name, "name");
        return new l(kVar, singleton.getMimeTypeFromExtension(n.d0('.', name, "")), 3);
    }
}
