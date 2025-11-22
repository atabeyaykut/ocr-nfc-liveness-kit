package androidx.core.util;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import p9.d;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000¨\u0006\u0004"}, d2 = {"Lp9/d;", "Ll9/m;", "Ljava/lang/Runnable;", "asRunnable", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class RunnableKt {
    public static final Runnable asRunnable(d<? super m> dVar) {
        h.f(dVar, "<this>");
        return new ContinuationRunnable(dVar);
    }
}
