package androidx.view.contextaware;

import android.content.Context;
import c5.w;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import nc.i;
import p9.d;
import x9.l;

@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"androidx/activity/contextaware/ContextAwareKt$withContextAvailable$2$listener$1", "Landroidx/activity/contextaware/OnContextAvailableListener;", "Landroid/content/Context;", "context", "Ll9/m;", "onContextAvailable", "activity-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class ContextAwareKt$withContextAvailable$2$listener$1 implements OnContextAvailableListener {
    final /* synthetic */ i<R> $co;
    final /* synthetic */ l<Context, R> $onContextAvailable;

    /* JADX WARN: Multi-variable type inference failed */
    public ContextAwareKt$withContextAvailable$2$listener$1(i<? super R> iVar, l<? super Context, ? extends R> lVar) {
        this.$co = iVar;
        this.$onContextAvailable = lVar;
    }

    @Override // androidx.view.contextaware.OnContextAvailableListener
    public void onContextAvailable(Context context) {
        Object objJ;
        h.f(context, "context");
        d dVar = this.$co;
        try {
            objJ = this.$onContextAvailable.invoke(context);
        } catch (Throwable th2) {
            objJ = w.j(th2);
        }
        dVar.resumeWith(objJ);
    }
}
