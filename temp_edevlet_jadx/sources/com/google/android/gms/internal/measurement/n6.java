package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.n6;
import com.google.android.gms.internal.measurement.q6;
import java.io.IOException;

/* loaded from: classes.dex */
public class n6<MessageType extends q6<MessageType, BuilderType>, BuilderType extends n6<MessageType, BuilderType>> extends k5<MessageType, BuilderType> {

    /* renamed from: a, reason: collision with root package name */
    public final MessageType f3641a;

    /* renamed from: b, reason: collision with root package name */
    public MessageType f3642b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3643c = false;

    public n6(MessageType messagetype) {
        this.f3641a = messagetype;
        this.f3642b = (MessageType) messagetype.q(4);
    }

    @Override // com.google.android.gms.internal.measurement.t7
    public final /* synthetic */ q6 d() {
        return this.f3641a;
    }

    public final MessageType f() {
        MessageType messagetype = (MessageType) h();
        boolean zP = true;
        byte bByteValue = ((Byte) messagetype.q(1)).byteValue();
        if (bByteValue != 1) {
            if (bByteValue == 0) {
                zP = false;
            } else {
                zP = a8.f3373c.a(messagetype.getClass()).p(messagetype);
                messagetype.q(2);
            }
        }
        if (zP) {
            return messagetype;
        }
        throw new com.airbnb.epoxy.c0();
    }

    public final MessageType h() {
        if (this.f3643c) {
            return this.f3642b;
        }
        MessageType messagetype = this.f3642b;
        a8.f3373c.a(messagetype.getClass()).d(messagetype);
        this.f3643c = true;
        return this.f3642b;
    }

    public final void i() {
        MessageType messagetype = (MessageType) this.f3642b.q(4);
        a8.f3373c.a(messagetype.getClass()).g(messagetype, this.f3642b);
        this.f3642b = messagetype;
    }

    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final BuilderType clone() {
        BuilderType buildertype = (BuilderType) this.f3641a.q(5);
        buildertype.k(h());
        return buildertype;
    }

    public final void k(q6 q6Var) {
        if (this.f3643c) {
            i();
            this.f3643c = false;
        }
        MessageType messagetype = this.f3642b;
        a8.f3373c.a(messagetype.getClass()).g(messagetype, q6Var);
    }

    public final void l(byte[] bArr, int r10, d6 d6Var) throws z6 {
        if (this.f3643c) {
            i();
            this.f3643c = false;
        }
        try {
            a8.f3373c.a(this.f3642b.getClass()).f(this.f3642b, bArr, 0, r10, new o5(d6Var));
        } catch (z6 e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
        } catch (IndexOutOfBoundsException unused) {
            throw z6.d();
        }
    }
}
