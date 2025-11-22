package i1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import v0.l;
import x0.w;

/* loaded from: classes.dex */
public final class f implements l<c> {

    /* renamed from: b, reason: collision with root package name */
    public final l<Bitmap> f7254b;

    public f(l<Bitmap> lVar) {
        q1.l.b(lVar);
        this.f7254b = lVar;
    }

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        this.f7254b.a(messageDigest);
    }

    @Override // v0.l
    @NonNull
    public final w b(@NonNull com.bumptech.glide.h hVar, @NonNull w wVar, int r72, int r82) {
        c cVar = (c) wVar.get();
        e1.e eVar = new e1.e(cVar.f7243a.f7253a.f7265l, com.bumptech.glide.b.b(hVar).f2706a);
        l<Bitmap> lVar = this.f7254b;
        w wVarB = lVar.b(hVar, eVar, r72, r82);
        if (!eVar.equals(wVarB)) {
            eVar.recycle();
        }
        cVar.f7243a.f7253a.c(lVar, (Bitmap) wVarB.get());
        return wVar;
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f7254b.equals(((f) obj).f7254b);
        }
        return false;
    }

    @Override // v0.f
    public final int hashCode() {
        return this.f7254b.hashCode();
    }
}
