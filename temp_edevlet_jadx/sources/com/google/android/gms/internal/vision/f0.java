package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.e0;
import com.google.android.gms.internal.vision.f0;
import com.google.android.gms.internal.vision.t0;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class f0<MessageType extends f0<MessageType, BuilderType>, BuilderType extends e0<MessageType, BuilderType>> implements n2 {
    protected int zza = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(Iterable iterable, r1 r1Var) {
        Charset charset = m1.f4035a;
        iterable.getClass();
        if (iterable instanceof a2) {
            List<?> listD = ((a2) iterable).d();
            a2 a2Var = (a2) r1Var;
            int size = r1Var.size();
            for (Object obj : listD) {
                if (obj == null) {
                    int size2 = a2Var.size() - size;
                    StringBuilder sb2 = new StringBuilder(37);
                    sb2.append("Element at index ");
                    sb2.append(size2);
                    sb2.append(" is null.");
                    String string = sb2.toString();
                    int size3 = a2Var.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            throw new NullPointerException(string);
                        }
                        a2Var.remove(size3);
                    }
                } else if (obj instanceof p0) {
                    a2Var.d0((p0) obj);
                } else {
                    a2Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof y2) {
            r1Var.addAll((Collection) iterable);
            return;
        }
        if ((r1Var instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) r1Var).ensureCapacity(((Collection) iterable).size() + r1Var.size());
        }
        int size4 = r1Var.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                int size5 = r1Var.size() - size4;
                StringBuilder sb3 = new StringBuilder(37);
                sb3.append("Element at index ");
                sb3.append(size5);
                sb3.append(" is null.");
                String string2 = sb3.toString();
                int size6 = r1Var.size();
                while (true) {
                    size6--;
                    if (size6 < size4) {
                        throw new NullPointerException(string2);
                    }
                    r1Var.remove(size6);
                }
            } else {
                r1Var.add(obj2);
            }
        }
    }

    public void d(int r12) {
        throw new UnsupportedOperationException();
    }

    public int e() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.vision.n2
    public final s0 l() {
        try {
            i1 i1Var = (i1) this;
            int r12 = i1Var.r();
            s0 s0Var = p0.f4044b;
            byte[] bArr = new byte[r12];
            Logger logger = t0.f4085b;
            t0.a aVar = new t0.a(bArr, r12);
            i1Var.b(aVar);
            if (aVar.f() == 0) {
                return new s0(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            String name = getClass().getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 62 + 10);
            sb2.append("Serializing ");
            sb2.append(name);
            sb2.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb2.toString(), e10);
        }
    }
}
