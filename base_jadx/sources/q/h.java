package q;

import android.view.View;
import android.view.ViewTreeObserver;
import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

/* loaded from: classes.dex */
public final class h extends j implements l<Throwable, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g<View> f13263a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver f13264b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f13265c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(g<View> gVar, ViewTreeObserver viewTreeObserver, i iVar) {
        super(1);
        this.f13263a = gVar;
        this.f13264b = viewTreeObserver;
        this.f13265c = iVar;
    }

    @Override // x9.l
    public final m invoke(Throwable th2) {
        ViewTreeObserver viewTreeObserver = this.f13264b;
        boolean zIsAlive = viewTreeObserver.isAlive();
        i iVar = this.f13265c;
        if (!zIsAlive) {
            viewTreeObserver = this.f13263a.c().getViewTreeObserver();
        }
        viewTreeObserver.removeOnPreDrawListener(iVar);
        return m.f9594a;
    }
}
