package eb;

import fb.a;
import mb.h;

/* loaded from: classes2.dex */
public final class n implements ac.g {

    /* renamed from: b, reason: collision with root package name */
    public final tb.b f5220b;

    /* renamed from: c, reason: collision with root package name */
    public final tb.b f5221c;

    /* renamed from: d, reason: collision with root package name */
    public final s f5222d;

    public n() {
        throw null;
    }

    public n(s kotlinClass, gb.k packageProto, kb.f nameResolver, int r92) {
        kotlin.jvm.internal.h.f(kotlinClass, "kotlinClass");
        kotlin.jvm.internal.h.f(packageProto, "packageProto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        androidx.camera.core.impl.utils.f.j(r92, "abiStability");
        tb.b bVarB = tb.b.b(kotlinClass.c());
        fb.a aVarA = kotlinClass.a();
        aVarA.getClass();
        tb.b bVarD = null;
        String str = aVarA.f5553a == a.EnumC0087a.MULTIFILE_CLASS_PART ? aVarA.f : null;
        if (str != null) {
            if (str.length() > 0) {
                bVarD = tb.b.d(str);
            }
        }
        this.f5220b = bVarB;
        this.f5221c = bVarD;
        this.f5222d = kotlinClass;
        h.e<gb.k, Integer> packageModuleName = jb.a.f8421m;
        kotlin.jvm.internal.h.e(packageModuleName, "packageModuleName");
        Integer num = (Integer) ib.e.a(packageProto, packageModuleName);
        if (num != null) {
            nameResolver.getString(num.intValue());
        }
    }

    @Override // ma.r0
    public final void a() {
    }

    @Override // ac.g
    public final String c() {
        return "Class '" + d().b().b() + '\'';
    }

    public final lb.b d() {
        lb.c cVar;
        tb.b bVar = this.f5220b;
        String str = bVar.f15648a;
        int r32 = str.lastIndexOf("/");
        if (r32 == -1) {
            cVar = lb.c.f9667c;
            if (cVar == null) {
                tb.b.a(7);
                throw null;
            }
        } else {
            cVar = new lb.c(str.substring(0, r32).replace('/', '.'));
        }
        String strE = bVar.e();
        kotlin.jvm.internal.h.e(strE, "className.internalName");
        return new lb.b(cVar, lb.f.t(mc.n.d0('/', strE, strE)));
    }

    public final String toString() {
        return n.class.getSimpleName() + ": " + this.f5220b;
    }
}
