package ec;

import cc.a1;
import cc.c1;
import cc.e0;
import cc.i1;
import cc.m0;
import cc.s1;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class f extends m0 {

    /* renamed from: b, reason: collision with root package name */
    public final c1 f5247b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.i f5248c;

    /* renamed from: d, reason: collision with root package name */
    public final h f5249d;

    /* renamed from: e, reason: collision with root package name */
    public final List<i1> f5250e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final String[] f5251g;

    /* renamed from: h, reason: collision with root package name */
    public final String f5252h;

    /* JADX WARN: Multi-variable type inference failed */
    public f(c1 constructor, vb.i memberScope, h kind, List<? extends i1> arguments, boolean z10, String... formatParams) {
        kotlin.jvm.internal.h.f(constructor, "constructor");
        kotlin.jvm.internal.h.f(memberScope, "memberScope");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        kotlin.jvm.internal.h.f(formatParams, "formatParams");
        this.f5247b = constructor;
        this.f5248c = memberScope;
        this.f5249d = kind;
        this.f5250e = arguments;
        this.f = z10;
        this.f5251g = formatParams;
        Object[] objArrCopyOf = Arrays.copyOf(formatParams, formatParams.length);
        String str = String.format(kind.f5275a, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        kotlin.jvm.internal.h.e(str, "format(format, *args)");
        this.f5252h = str;
    }

    @Override // cc.e0
    public final List<i1> K0() {
        return this.f5250e;
    }

    @Override // cc.e0
    public final a1 L0() {
        a1.f2258b.getClass();
        return a1.f2259c;
    }

    @Override // cc.e0
    public final c1 M0() {
        return this.f5247b;
    }

    @Override // cc.e0
    public final boolean N0() {
        return this.f;
    }

    @Override // cc.e0
    /* renamed from: O0 */
    public final e0 R0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // cc.s1
    public final s1 R0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // cc.m0, cc.s1
    public final s1 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return this;
    }

    @Override // cc.m0
    /* renamed from: T0 */
    public final m0 Q0(boolean z10) {
        c1 c1Var = this.f5247b;
        vb.i iVar = this.f5248c;
        h hVar = this.f5249d;
        List<i1> list = this.f5250e;
        String[] strArr = this.f5251g;
        return new f(c1Var, iVar, hVar, list, z10, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return this;
    }

    @Override // cc.e0
    public final vb.i o() {
        return this.f5248c;
    }
}
