package com.google.crypto.tink.shaded.protobuf;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class m0 implements l0 {
    @Override // com.google.crypto.tink.shaded.protobuf.l0
    public final k0 a(Object obj, Object obj2) {
        k0 k0Var = (k0) obj;
        k0 k0Var2 = (k0) obj2;
        if (!k0Var2.isEmpty()) {
            if (!k0Var.f4309a) {
                k0Var = k0Var.isEmpty() ? new k0() : new k0(k0Var);
            }
            k0Var.c();
            if (!k0Var2.isEmpty()) {
                k0Var.putAll(k0Var2);
            }
        }
        return k0Var;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.l0
    public final Object b(Object obj) {
        ((k0) obj).f4309a = false;
        return obj;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.l0
    public final void c(Object obj) {
        ((j0) obj).getClass();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.l0
    public final k0 d() {
        k0 k0Var = k0.f4308b;
        return k0Var.isEmpty() ? new k0() : new k0(k0Var);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.l0
    public final k0 e(Object obj) {
        return (k0) obj;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.l0
    public final int f(int r22, Object obj, Object obj2) {
        k0 k0Var = (k0) obj;
        j0 j0Var = (j0) obj2;
        if (k0Var.isEmpty()) {
            return 0;
        }
        Iterator it = k0Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        j0Var.getClass();
        l.t(r22);
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.l0
    public final boolean g(Object obj) {
        return !((k0) obj).f4309a;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.l0
    public final k0 h(Object obj) {
        return (k0) obj;
    }
}
