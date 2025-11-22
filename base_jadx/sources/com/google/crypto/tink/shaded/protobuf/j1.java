package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.a0;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class j1<T, B> {
    public abstract void a(int r12, int r22, Object obj);

    public abstract void b(int r12, long j10, Object obj);

    public abstract void c(int r12, Object obj, Object obj2);

    public abstract void d(B b10, int r22, i iVar);

    public abstract void e(int r12, long j10, Object obj);

    public abstract k1 f(Object obj);

    public abstract k1 g(Object obj);

    public abstract int h(T t10);

    public abstract int i(T t10);

    public abstract void j(Object obj);

    public abstract k1 k(Object obj, Object obj2);

    public final boolean l(B b10, d1 d1Var) throws IOException {
        int tag = d1Var.getTag();
        int r12 = tag >>> 3;
        int r02 = tag & 7;
        if (r02 == 0) {
            e(r12, d1Var.K(), b10);
            return true;
        }
        if (r02 == 1) {
            b(r12, d1Var.c(), b10);
            return true;
        }
        if (r02 == 2) {
            d(b10, r12, d1Var.C());
            return true;
        }
        if (r02 != 3) {
            if (r02 == 4) {
                return false;
            }
            if (r02 == 5) {
                a(r12, d1Var.h(), b10);
                return true;
            }
            int r72 = a0.f4223a;
            throw new a0.a();
        }
        k1 k1VarM = m();
        int r32 = (r12 << 3) | 4;
        while (d1Var.z() != Integer.MAX_VALUE && l(k1VarM, d1Var)) {
        }
        if (r32 != d1Var.getTag()) {
            throw new a0("Protocol message end-group tag did not match expected tag.");
        }
        c(r12, b10, q(k1VarM));
        return true;
    }

    public abstract k1 m();

    public abstract void n(Object obj, B b10);

    public abstract void o(Object obj, T t10);

    public abstract void p();

    public abstract k1 q(Object obj);

    public abstract void r(Object obj, m mVar) throws IOException;

    public abstract void s(Object obj, m mVar) throws IOException;
}
