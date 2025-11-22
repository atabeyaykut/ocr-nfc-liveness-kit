package e1;

import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.IOException;

/* loaded from: classes.dex */
public final class a implements v0.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5016a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final v0.j f5017b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5018c;

    public a(Resources resources, v0.j jVar) {
        this.f5018c = resources;
        this.f5017b = jVar;
    }

    @Override // v0.j
    public final boolean a(Object obj, v0.h hVar) {
        switch (this.f5016a) {
            case 0:
                return this.f5017b.a(obj, hVar);
            default:
                return "android.resource".equals(((Uri) obj).getScheme());
        }
    }

    @Override // v0.j
    public final x0.w b(Object obj, int r6, int r72, v0.h hVar) throws PackageManager.NameNotFoundException, IOException, NumberFormatException {
        int r12 = this.f5016a;
        Object obj2 = this.f5018c;
        v0.j jVar = this.f5017b;
        switch (r12) {
            case 0:
                x0.w wVarB = jVar.b(obj, r6, r72, hVar);
                Resources resources = (Resources) obj2;
                if (wVarB == null) {
                    return null;
                }
                return new u(resources, wVarB);
            default:
                x0.w wVarC = ((g1.f) jVar).c((Uri) obj, hVar);
                if (wVarC == null) {
                    return null;
                }
                return n.a((y0.c) obj2, (Drawable) ((g1.c) wVarC).get(), r6, r72);
        }
    }

    public a(g1.f fVar, y0.c cVar) {
        this.f5017b = fVar;
        this.f5018c = cVar;
    }
}
