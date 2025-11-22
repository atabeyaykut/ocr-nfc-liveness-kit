package j;

import android.content.Context;
import android.graphics.Bitmap;
import g.n;
import j.h;
import java.io.File;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class c implements h {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f7918a;

    /* renamed from: b, reason: collision with root package name */
    public final p.k f7919b;

    public static final class a implements h.a<ByteBuffer> {
        @Override // j.h.a
        public final h a(Object obj, p.k kVar) {
            return new c((ByteBuffer) obj, kVar);
        }
    }

    public c(ByteBuffer byteBuffer, p.k kVar) {
        this.f7918a = byteBuffer;
        this.f7919b = kVar;
    }

    @Override // j.h
    public final Object a(p9.d<? super g> dVar) {
        ByteBuffer byteBuffer = this.f7918a;
        try {
            ed.e eVar = new ed.e();
            eVar.write(byteBuffer);
            byteBuffer.position(0);
            Context context = this.f7919b.f12166a;
            Bitmap.Config[] configArr = u.c.f17726a;
            File cacheDir = context.getCacheDir();
            cacheDir.mkdirs();
            return new l(new n(eVar, cacheDir, null), null, 2);
        } catch (Throwable th2) {
            byteBuffer.position(0);
            throw th2;
        }
    }
}
