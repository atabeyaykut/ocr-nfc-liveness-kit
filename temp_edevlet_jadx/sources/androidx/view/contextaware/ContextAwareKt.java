package androidx.view.contextaware;

import android.content.Context;
import c5.w;
import kotlin.Metadata;
import nc.j;
import p9.d;
import x9.l;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a3\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0014\b\u0004\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\u0002H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"R", "Landroidx/activity/contextaware/ContextAware;", "Lkotlin/Function1;", "Landroid/content/Context;", "onContextAvailable", "withContextAvailable", "(Landroidx/activity/contextaware/ContextAware;Lx9/l;Lp9/d;)Ljava/lang/Object;", "activity-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class ContextAwareKt {
    public static final <R> Object withContextAvailable(ContextAware contextAware, l<? super Context, ? extends R> lVar, d<? super R> dVar) {
        Context contextPeekAvailableContext = contextAware.peekAvailableContext();
        if (contextPeekAvailableContext != null) {
            return lVar.invoke(contextPeekAvailableContext);
        }
        j jVar = new j(1, w.x(dVar));
        jVar.n();
        ContextAwareKt$withContextAvailable$2$listener$1 contextAwareKt$withContextAvailable$2$listener$1 = new ContextAwareKt$withContextAvailable$2$listener$1(jVar, lVar);
        contextAware.addOnContextAvailableListener(contextAwareKt$withContextAvailable$2$listener$1);
        jVar.D(new ContextAwareKt$withContextAvailable$2$1(contextAware, contextAwareKt$withContextAvailable$2$listener$1));
        return jVar.m();
    }

    private static final <R> Object withContextAvailable$$forInline(ContextAware contextAware, l<? super Context, ? extends R> lVar, d<? super R> dVar) {
        Context contextPeekAvailableContext = contextAware.peekAvailableContext();
        if (contextPeekAvailableContext != null) {
            return lVar.invoke(contextPeekAvailableContext);
        }
        j jVar = new j(1, w.x(dVar));
        jVar.n();
        ContextAwareKt$withContextAvailable$2$listener$1 contextAwareKt$withContextAvailable$2$listener$1 = new ContextAwareKt$withContextAvailable$2$listener$1(jVar, lVar);
        contextAware.addOnContextAvailableListener(contextAwareKt$withContextAvailable$2$listener$1);
        jVar.D(new ContextAwareKt$withContextAvailable$2$1(contextAware, contextAwareKt$withContextAvailable$2$listener$1));
        return jVar.m();
    }
}
