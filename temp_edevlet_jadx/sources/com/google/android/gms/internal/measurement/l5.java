package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.k5;
import com.google.android.gms.internal.measurement.l5;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class l5<MessageType extends l5<MessageType, BuilderType>, BuilderType extends k5<MessageType, BuilderType>> implements s7 {
    protected int zzb = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(Iterable iterable, w6 w6Var) {
        Charset charset = x6.f3835a;
        iterable.getClass();
        if (iterable instanceof d7) {
            List<?> listI = ((d7) iterable).i();
            d7 d7Var = (d7) w6Var;
            int size = w6Var.size();
            for (Object obj : listI) {
                if (obj == null) {
                    int size2 = d7Var.size();
                    StringBuilder sb2 = new StringBuilder(37);
                    sb2.append("Element at index ");
                    sb2.append(size2 - size);
                    sb2.append(" is null.");
                    String string = sb2.toString();
                    int size3 = d7Var.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            throw new NullPointerException(string);
                        }
                        d7Var.remove(size3);
                    }
                } else if (obj instanceof v5) {
                    d7Var.t((v5) obj);
                } else {
                    d7Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof z7) {
            w6Var.addAll(iterable);
            return;
        }
        if ((w6Var instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) w6Var).ensureCapacity(iterable.size() + w6Var.size());
        }
        int size4 = w6Var.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                int size5 = w6Var.size();
                StringBuilder sb3 = new StringBuilder(37);
                sb3.append("Element at index ");
                sb3.append(size5 - size4);
                sb3.append(" is null.");
                String string2 = sb3.toString();
                int size6 = w6Var.size();
                while (true) {
                    size6--;
                    if (size6 < size4) {
                        throw new NullPointerException(string2);
                    }
                    w6Var.remove(size6);
                }
            } else {
                w6Var.add(obj2);
            }
        }
    }

    public int a() {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.s7
    public final u5 c() {
        try {
            q6 q6Var = (q6) this;
            int r12 = q6Var.g();
            u5 u5Var = v5.f3791b;
            byte[] bArr = new byte[r12];
            Logger logger = z5.f3858v;
            x5 x5Var = new x5(bArr, r12);
            d8 d8VarA = a8.f3373c.a(q6Var.getClass());
            a6 a6Var = x5Var.f3859t;
            if (a6Var == null) {
                a6Var = new a6(x5Var);
            }
            d8VarA.i(q6Var, a6Var);
            if (r12 - x5Var.f3834z == 0) {
                return new u5(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            String name = getClass().getName();
            throw new RuntimeException(android.support.v4.media.a.i(new StringBuilder(name.length() + 72), "Serializing ", name, " to a ByteString threw an IOException (should never happen)."), e10);
        }
    }

    public void h(int r12) {
        throw null;
    }

    public final byte[] i() {
        try {
            q6 q6Var = (q6) this;
            int r12 = q6Var.g();
            byte[] bArr = new byte[r12];
            Logger logger = z5.f3858v;
            x5 x5Var = new x5(bArr, r12);
            d8 d8VarA = a8.f3373c.a(q6Var.getClass());
            a6 a6Var = x5Var.f3859t;
            if (a6Var == null) {
                a6Var = new a6(x5Var);
            }
            d8VarA.i(q6Var, a6Var);
            if (r12 - x5Var.f3834z == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            String name = getClass().getName();
            throw new RuntimeException(android.support.v4.media.a.i(new StringBuilder(name.length() + 72), "Serializing ", name, " to a byte array threw an IOException (should never happen)."), e10);
        }
    }
}
