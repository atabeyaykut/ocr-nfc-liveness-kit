package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.a;
import com.google.crypto.tink.shaded.protobuf.a.AbstractC0063a;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.l;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.io.IOException;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0063a<MessageType, BuilderType>> implements q0 {
    protected int memoizedHashCode = 0;

    /* renamed from: com.google.crypto.tink.shaded.protobuf.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0063a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0063a<MessageType, BuilderType>> implements q0.a {
    }

    public int a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q0
    public final i.f f() {
        try {
            x xVar = (x) this;
            int r12 = xVar.c();
            i.f fVar = i.f4287b;
            byte[] bArr = new byte[r12];
            Logger logger = l.f4315b;
            l.a aVar = new l.a(bArr, r12);
            xVar.d(aVar);
            if (aVar.Q() == 0) {
                return new i.f(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            throw new RuntimeException(i("ByteString"), e10);
        }
    }

    public final String i(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    public void j(int r12) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q0
    public final byte[] toByteArray() {
        try {
            x xVar = (x) this;
            int r12 = xVar.c();
            byte[] bArr = new byte[r12];
            Logger logger = l.f4315b;
            l.a aVar = new l.a(bArr, r12);
            xVar.d(aVar);
            if (aVar.Q() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            throw new RuntimeException(i("byte array"), e10);
        }
    }
}
