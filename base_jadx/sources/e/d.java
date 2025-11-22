package e;

import android.content.Context;
import android.graphics.Bitmap;
import e.f;
import ed.z;
import h.a;
import java.io.File;

/* loaded from: classes.dex */
public final class d extends kotlin.jvm.internal.j implements x9.a<h.a> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f.a f4988a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(f.a aVar) {
        super(0);
        this.f4988a = aVar;
    }

    @Override // x9.a
    public final h.a invoke() {
        h.f fVarA;
        u.k kVar = u.k.f17742a;
        Context context = this.f4988a.f4990a;
        synchronized (kVar) {
            fVarA = u.k.f17743b;
            if (fVarA == null) {
                a.C0116a c0116a = new a.C0116a();
                Bitmap.Config[] configArr = u.c.f17726a;
                File cacheDir = context.getCacheDir();
                cacheDir.mkdirs();
                File fileH0 = v9.d.h0(cacheDir);
                String str = z.f5363b;
                c0116a.f6733a = z.a.b(fileH0);
                fVarA = c0116a.a();
                u.k.f17743b = fVarA;
            }
        }
        return fVarA;
    }
}
