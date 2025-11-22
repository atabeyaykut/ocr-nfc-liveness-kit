package i1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
import x0.w;

/* loaded from: classes.dex */
public final class h implements v0.j<u0.a, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final y0.c f7275a;

    public h(y0.c cVar) {
        this.f7275a = cVar;
    }

    @Override // v0.j
    public final /* bridge */ /* synthetic */ boolean a(@NonNull u0.a aVar, @NonNull v0.h hVar) throws IOException {
        return true;
    }

    @Override // v0.j
    public final w<Bitmap> b(@NonNull u0.a aVar, int r22, int r32, @NonNull v0.h hVar) throws IOException {
        return e1.e.b(aVar.a(), this.f7275a);
    }
}
