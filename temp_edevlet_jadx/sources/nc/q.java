package nc;

import java.util.concurrent.CancellationException;

/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10829a;

    /* renamed from: b, reason: collision with root package name */
    public final g f10830b;

    /* renamed from: c, reason: collision with root package name */
    public final x9.l<Throwable, l9.m> f10831c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f10832d;

    /* renamed from: e, reason: collision with root package name */
    public final Throwable f10833e;

    /* JADX WARN: Multi-variable type inference failed */
    public q(Object obj, g gVar, x9.l<? super Throwable, l9.m> lVar, Object obj2, Throwable th2) {
        this.f10829a = obj;
        this.f10830b = gVar;
        this.f10831c = lVar;
        this.f10832d = obj2;
        this.f10833e = th2;
    }

    public /* synthetic */ q(Object obj, g gVar, x9.l lVar, Object obj2, CancellationException cancellationException, int r14) {
        this(obj, (r14 & 2) != 0 ? null : gVar, (r14 & 4) != 0 ? null : lVar, (r14 & 8) != 0 ? null : obj2, (r14 & 16) != 0 ? null : cancellationException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Throwable] */
    public static q a(q qVar, g gVar, CancellationException cancellationException, int r11) {
        Object obj = (r11 & 1) != 0 ? qVar.f10829a : null;
        if ((r11 & 2) != 0) {
            gVar = qVar.f10830b;
        }
        g gVar2 = gVar;
        x9.l<Throwable, l9.m> lVar = (r11 & 4) != 0 ? qVar.f10831c : null;
        Object obj2 = (r11 & 8) != 0 ? qVar.f10832d : null;
        CancellationException cancellationException2 = cancellationException;
        if ((r11 & 16) != 0) {
            cancellationException2 = qVar.f10833e;
        }
        qVar.getClass();
        return new q(obj, gVar2, lVar, obj2, cancellationException2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return kotlin.jvm.internal.h.a(this.f10829a, qVar.f10829a) && kotlin.jvm.internal.h.a(this.f10830b, qVar.f10830b) && kotlin.jvm.internal.h.a(this.f10831c, qVar.f10831c) && kotlin.jvm.internal.h.a(this.f10832d, qVar.f10832d) && kotlin.jvm.internal.h.a(this.f10833e, qVar.f10833e);
    }

    public final int hashCode() {
        Object obj = this.f10829a;
        int r12 = (obj == null ? 0 : obj.hashCode()) * 31;
        g gVar = this.f10830b;
        int r13 = (r12 + (gVar == null ? 0 : gVar.hashCode())) * 31;
        x9.l<Throwable, l9.m> lVar = this.f10831c;
        int r14 = (r13 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.f10832d;
        int r15 = (r14 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th2 = this.f10833e;
        return r15 + (th2 != null ? th2.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f10829a + ", cancelHandler=" + this.f10830b + ", onCancellation=" + this.f10831c + ", idempotentResume=" + this.f10832d + ", cancelCause=" + this.f10833e + ')';
    }
}
