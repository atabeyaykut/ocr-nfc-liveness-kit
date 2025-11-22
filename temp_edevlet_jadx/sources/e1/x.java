package e1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import e1.m;
import e1.s;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class x implements v0.j<InputStream, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final m f5094a;

    /* renamed from: b, reason: collision with root package name */
    public final y0.b f5095b;

    public static class a implements m.b {

        /* renamed from: a, reason: collision with root package name */
        public final w f5096a;

        /* renamed from: b, reason: collision with root package name */
        public final q1.d f5097b;

        public a(w wVar, q1.d dVar) {
            this.f5096a = wVar;
            this.f5097b = dVar;
        }

        @Override // e1.m.b
        public final void a(Bitmap bitmap, y0.c cVar) throws IOException {
            IOException iOException = this.f5097b.f13302b;
            if (iOException != null) {
                if (bitmap == null) {
                    throw iOException;
                }
                cVar.d(bitmap);
                throw iOException;
            }
        }

        @Override // e1.m.b
        public final void b() {
            w wVar = this.f5096a;
            synchronized (wVar) {
                wVar.f5091c = wVar.f5089a.length;
            }
        }
    }

    public x(m mVar, y0.b bVar) {
        this.f5094a = mVar;
        this.f5095b = bVar;
    }

    @Override // v0.j
    public final boolean a(@NonNull InputStream inputStream, @NonNull v0.h hVar) throws IOException {
        this.f5094a.getClass();
        return true;
    }

    @Override // v0.j
    public final x0.w<Bitmap> b(@NonNull InputStream inputStream, int r11, int r12, @NonNull v0.h hVar) throws IOException {
        w wVar;
        boolean z10;
        q1.d dVar;
        InputStream inputStream2 = inputStream;
        if (inputStream2 instanceof w) {
            wVar = (w) inputStream2;
            z10 = false;
        } else {
            wVar = new w(inputStream2, this.f5095b);
            z10 = true;
        }
        ArrayDeque arrayDeque = q1.d.f13300c;
        synchronized (arrayDeque) {
            dVar = (q1.d) arrayDeque.poll();
        }
        if (dVar == null) {
            dVar = new q1.d();
        }
        dVar.f13301a = wVar;
        q1.j jVar = new q1.j(dVar);
        a aVar = new a(wVar, dVar);
        try {
            m mVar = this.f5094a;
            return mVar.a(new s.b(mVar.f5059c, jVar, mVar.f5060d), r11, r12, hVar, aVar);
        } finally {
            dVar.a();
            if (z10) {
                wVar.b();
            }
        }
    }
}
