package q;

import android.view.View;
import android.view.ViewTreeObserver;
import nc.j;
import q.g;

/* loaded from: classes.dex */
public final class i implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public boolean f13266a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g<View> f13267b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver f13268c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ nc.i<e> f13269d;

    public i(g gVar, ViewTreeObserver viewTreeObserver, j jVar) {
        this.f13267b = gVar;
        this.f13268c = viewTreeObserver;
        this.f13269d = jVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        g<View> gVar = this.f13267b;
        e eVarA = g.a.a(gVar);
        if (eVarA != null) {
            ViewTreeObserver viewTreeObserver = this.f13268c;
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            } else {
                gVar.c().getViewTreeObserver().removeOnPreDrawListener(this);
            }
            if (!this.f13266a) {
                this.f13266a = true;
                this.f13269d.resumeWith(eVarA);
            }
        }
        return true;
    }
}
