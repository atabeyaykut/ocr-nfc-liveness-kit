package ga;

import gb.h;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;

/* loaded from: classes2.dex */
public class u0 extends kotlin.jvm.internal.x {
    public static s i(kotlin.jvm.internal.a aVar) {
        da.f owner = aVar.getOwner();
        return owner instanceof s ? (s) owner : e.f5985b;
    }

    @Override // kotlin.jvm.internal.x
    public final da.g a(kotlin.jvm.internal.f fVar) {
        s container = i(fVar);
        String name = fVar.getName();
        String signature = fVar.getSignature();
        Object boundReceiver = fVar.getBoundReceiver();
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(signature, "signature");
        return new x(container, name, signature, null, boundReceiver);
    }

    @Override // kotlin.jvm.internal.x
    public final da.d b(Class cls) {
        return b.a(cls);
    }

    @Override // kotlin.jvm.internal.x
    public final da.f c(Class jClass, String str) {
        Object objPutIfAbsent;
        c cVar = b.f5958a;
        kotlin.jvm.internal.h.f(jClass, "jClass");
        c cVar2 = b.f5959b;
        cVar2.getClass();
        ConcurrentHashMap<Class<?>, V> concurrentHashMap = cVar2.f5967b;
        Object objInvoke = concurrentHashMap.get(jClass);
        if (objInvoke == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(jClass, (objInvoke = cVar2.f5966a.invoke(jClass)))) != null) {
            objInvoke = objPutIfAbsent;
        }
        return (da.f) objInvoke;
    }

    @Override // kotlin.jvm.internal.x
    public final da.i d(kotlin.jvm.internal.k kVar) {
        return new z(i(kVar), kVar.getName(), kVar.getSignature(), kVar.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.x
    public final da.k e(kotlin.jvm.internal.o oVar) {
        return new g0(i(oVar), oVar.getName(), oVar.getSignature(), oVar.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.x
    public final da.l f(kotlin.jvm.internal.q qVar) {
        return new h0(i(qVar), qVar.getName(), qVar.getSignature(), qVar.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.x
    public final String g(kotlin.jvm.internal.e eVar) throws IOException {
        x xVarB;
        kotlin.jvm.internal.h.f(eVar, "<this>");
        Metadata metadata = (Metadata) eVar.getClass().getAnnotation(Metadata.class);
        x xVar = null;
        if (metadata != null) {
            String[] strArrD1 = metadata.d1();
            if (strArrD1.length == 0) {
                strArrD1 = null;
            }
            if (strArrD1 != null) {
                String[] strings = metadata.d2();
                mb.f fVar = kb.h.f8820a;
                kotlin.jvm.internal.h.f(strings, "strings");
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(kb.a.b(strArrD1));
                kb.f fVarG = kb.h.g(byteArrayInputStream, strings);
                h.a aVar = gb.h.f6326y;
                mb.f fVar2 = kb.h.f8820a;
                aVar.getClass();
                mb.d dVar = new mb.d(byteArrayInputStream);
                mb.p pVar = (mb.p) aVar.a(dVar, fVar2);
                try {
                    dVar.a(0);
                    mb.b.b(pVar);
                    gb.h hVar = (gb.h) pVar;
                    kb.e eVar2 = new kb.e(metadata.mv(), (metadata.xi() & 8) != 0);
                    Class<?> cls = eVar.getClass();
                    gb.s sVar = hVar.f6340r;
                    kotlin.jvm.internal.h.e(sVar, "proto.typeTable");
                    xVar = new x(e.f5985b, (ma.q0) z0.f(cls, hVar, fVarG, new ib.g(sVar), eVar2, fa.c.f5552a));
                } catch (mb.j e10) {
                    e10.f10298a = pVar;
                    throw e10;
                }
            }
        }
        if (xVar == null || (xVarB = z0.b(xVar)) == null) {
            return super.g(eVar);
        }
        nb.d dVar2 = v0.f6124a;
        ma.u uVarS = xVarB.o();
        StringBuilder sb2 = new StringBuilder();
        v0.a(sb2, uVarS);
        List<ma.a1> listG = uVarS.g();
        kotlin.jvm.internal.h.e(listG, "invoke.valueParameters");
        m9.t.f1(listG, sb2, ", ", "(", ")", w0.f6126a, 48);
        sb2.append(" -> ");
        cc.e0 returnType = uVarS.getReturnType();
        kotlin.jvm.internal.h.c(returnType);
        sb2.append(v0.d(returnType));
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // kotlin.jvm.internal.x
    public final String h(kotlin.jvm.internal.j jVar) {
        return g(jVar);
    }
}
