package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.e0;
import com.google.android.gms.internal.clearcut.n;
import com.google.android.gms.internal.clearcut.o;
import java.io.IOException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class n<MessageType extends n<MessageType, BuilderType>, BuilderType extends o<MessageType, BuilderType>> implements x1 {
    private static boolean zzey;
    protected int zzex = 0;

    public void a(int r12) {
        throw new UnsupportedOperationException();
    }

    public int d() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.clearcut.x1
    public final c0 n() {
        try {
            v0 v0Var = (v0) this;
            int r12 = v0Var.s();
            c0 c0Var = x.f3341b;
            byte[] bArr = new byte[r12];
            Logger logger = e0.f3095b;
            e0.a aVar = new e0.a(bArr, 0, r12);
            v0Var.q(aVar);
            if (aVar.p() == 0) {
                return new c0(bArr);
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
