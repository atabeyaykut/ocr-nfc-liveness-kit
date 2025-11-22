package e1;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class o implements v0.l<Drawable> {

    /* renamed from: b, reason: collision with root package name */
    public final v0.l<Bitmap> f5063b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5064c;

    public o(v0.l<Bitmap> lVar, boolean z10) {
        this.f5063b = lVar;
        this.f5064c = z10;
    }

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        this.f5063b.a(messageDigest);
    }

    @Override // v0.l
    @NonNull
    public final x0.w b(@NonNull com.bumptech.glide.h hVar, @NonNull x0.w wVar, int r52, int r6) {
        y0.c cVar = com.bumptech.glide.b.b(hVar).f2706a;
        Drawable drawable = (Drawable) wVar.get();
        e eVarA = n.a(cVar, drawable, r52, r6);
        if (eVarA != null) {
            x0.w wVarB = this.f5063b.b(hVar, eVarA, r52, r6);
            if (!wVarB.equals(eVarA)) {
                return new u(hVar.getResources(), wVarB);
            }
            wVarB.recycle();
            return wVar;
        }
        if (!this.f5064c) {
            return wVar;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        if (obj instanceof o) {
            return this.f5063b.equals(((o) obj).f5063b);
        }
        return false;
    }

    @Override // v0.f
    public final int hashCode() {
        return this.f5063b.hashCode();
    }
}
