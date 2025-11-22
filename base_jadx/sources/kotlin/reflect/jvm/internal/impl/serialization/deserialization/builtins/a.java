package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import bc.l;
import gb.l;
import hb.a;
import ja.b;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.h;
import lb.c;
import ma.b0;
import mb.d;
import mb.f;
import mb.j;
import mb.p;
import yb.t;

/* loaded from: classes2.dex */
public final class a extends t implements b {

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a$a, reason: collision with other inner class name */
    public static final class C0169a {
        public static a a(c fqName, l storageManager, b0 module, InputStream inputStream, boolean z10) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
            gb.l lVar;
            h.f(fqName, "fqName");
            h.f(storageManager, "storageManager");
            h.f(module, "module");
            try {
                hb.a aVar = hb.a.f;
                hb.a aVarA = a.C0122a.a(inputStream);
                hb.a aVar2 = hb.a.f;
                if (aVarA.b(aVar2)) {
                    f fVar = new f();
                    hb.b.a(fVar);
                    l.a aVar3 = gb.l.f6378l;
                    aVar3.getClass();
                    d dVar = new d(inputStream);
                    p pVar = (p) aVar3.a(dVar, fVar);
                    try {
                        dVar.a(0);
                        mb.b.b(pVar);
                        lVar = (gb.l) pVar;
                    } catch (j e10) {
                        e10.f10298a = pVar;
                        throw e10;
                    }
                } else {
                    lVar = null;
                }
                x5.a.f(inputStream, null);
                if (lVar != null) {
                    return new a(fqName, storageManager, module, lVar, aVarA);
                }
                throw new UnsupportedOperationException("Kotlin built-in definition format version is not supported: expected " + aVar2 + ", actual " + aVarA + ". Please update Kotlin");
            } finally {
            }
        }
    }

    public a(c cVar, bc.l lVar, b0 b0Var, gb.l lVar2, hb.a aVar) {
        super(cVar, lVar, b0Var, lVar2, aVar);
    }

    @Override // pa.i0, pa.p
    public final String toString() {
        return "builtins package fragment for " + this.f12914e + " from " + sb.b.j(this);
    }
}
