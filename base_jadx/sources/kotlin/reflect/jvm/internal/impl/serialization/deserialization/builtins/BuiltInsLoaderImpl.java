package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import ja.o;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.w;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a;
import m9.n;
import ma.b0;
import ma.d0;
import ma.f0;
import ma.g0;
import oa.c;
import x9.l;
import yb.e;
import yb.q;
import yb.u;
import yb.v;
import zb.b;

/* loaded from: classes2.dex */
public final class BuiltInsLoaderImpl implements ja.a {

    /* renamed from: b, reason: collision with root package name */
    public final b f9005b = new b();

    public /* synthetic */ class a extends f implements l<String, InputStream> {
        public a(b bVar) {
            super(1, bVar);
        }

        @Override // kotlin.jvm.internal.a, da.c
        public final String getName() {
            return "loadResource";
        }

        @Override // kotlin.jvm.internal.a
        public final da.f getOwner() {
            return w.a(b.class);
        }

        @Override // kotlin.jvm.internal.a
        public final String getSignature() {
            return "loadResource(Ljava/lang/String;)Ljava/io/InputStream;";
        }

        @Override // x9.l
        public final InputStream invoke(String str) {
            String p02 = str;
            h.f(p02, "p0");
            ((b) this.receiver).getClass();
            return b.a(p02);
        }
    }

    @Override // ja.a
    public f0 a(bc.l storageManager, b0 builtInsModule, Iterable<? extends oa.b> classDescriptorFactories, c platformDependentDeclarationFilter, oa.a additionalClassPartsProvider, boolean z10) {
        h.f(storageManager, "storageManager");
        h.f(builtInsModule, "builtInsModule");
        h.f(classDescriptorFactories, "classDescriptorFactories");
        h.f(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        h.f(additionalClassPartsProvider, "additionalClassPartsProvider");
        Set<lb.c> packageFqNames = o.f8368o;
        a aVar = new a(this.f9005b);
        h.f(packageFqNames, "packageFqNames");
        ArrayList arrayList = new ArrayList(n.Q0(packageFqNames));
        for (lb.c cVar : packageFqNames) {
            zb.a.f20019m.getClass();
            String strA = zb.a.a(cVar);
            InputStream inputStream = (InputStream) aVar.invoke(strA);
            if (inputStream == null) {
                throw new IllegalStateException(androidx.browser.browseractions.b.e("Resource not found in classpath: ", strA));
            }
            arrayList.add(a.C0169a.a(cVar, storageManager, builtInsModule, inputStream, z10));
        }
        g0 g0Var = new g0(arrayList);
        d0 d0Var = new d0(storageManager, builtInsModule);
        q qVar = new q(g0Var);
        zb.a aVar2 = zb.a.f20019m;
        yb.l lVar = new yb.l(storageManager, builtInsModule, qVar, new e(builtInsModule, d0Var, aVar2), g0Var, u.f19485k0, v.a.f19486a, classDescriptorFactories, d0Var, additionalClassPartsProvider, platformDependentDeclarationFilter, aVar2.f19191a, null, new ub.b(storageManager), null, 851968);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a) it.next()).K0(lVar);
        }
        return g0Var;
    }
}
