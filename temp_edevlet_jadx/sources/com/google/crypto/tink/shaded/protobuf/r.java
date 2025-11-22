package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.x;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
public final class r extends q<x.d> {
    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final void a(Map.Entry entry) {
        ((x.d) entry.getKey()).getClass();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final x.e b(p pVar, q0 q0Var, int r42) {
        pVar.getClass();
        return pVar.f4340a.get(new p.a(r42, q0Var));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final t<x.d> c(Object obj) {
        return ((x.c) obj).extensions;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final t<x.d> d(Object obj) {
        x.c cVar = (x.c) obj;
        t<x.d> tVar = cVar.extensions;
        if (tVar.f4360b) {
            cVar.extensions = tVar.clone();
        }
        return cVar.extensions;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final boolean e(q0 q0Var) {
        return q0Var instanceof x.c;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final void f(Object obj) {
        t<x.d> tVar = ((x.c) obj).extensions;
        if (tVar.f4360b) {
            return;
        }
        tVar.f4359a.g();
        tVar.f4360b = true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final Object g(Object obj) throws IOException {
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final void h(Object obj) throws IOException {
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final void i(Object obj) throws IOException {
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q
    public final void j(Map.Entry entry) throws IOException {
        ((x.d) entry.getKey()).getClass();
        throw null;
    }
}
