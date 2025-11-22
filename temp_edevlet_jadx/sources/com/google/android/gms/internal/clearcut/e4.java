package com.google.android.gms.internal.clearcut;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import n3.a;

/* loaded from: classes.dex */
public final class e4 extends com.google.android.gms.common.api.internal.a<Status, i4> {

    /* renamed from: k, reason: collision with root package name */
    public final k3.f f3112k;

    public e4(k3.f fVar, o3.e0 e0Var) {
        super(k3.a.f8697k, e0Var);
        this.f3112k = fVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ n3.h b(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.a
    public final /* synthetic */ void i(a.e eVar) throws RemoteException {
        k3.f fVar = this.f3112k;
        i4 i4Var = (i4) eVar;
        h4 h4Var = new h4(this);
        try {
            fVar.getClass();
            f4 f4Var = fVar.f8723j;
            int r32 = f4Var.c();
            byte[] bArr = new byte[r32];
            y3.b(f4Var, bArr, r32);
            fVar.f8717b = bArr;
            ((k4) i4Var.w()).p0(h4Var, fVar);
        } catch (RuntimeException e10) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e10);
            j(new Status(10, "MessageProducer"));
        }
    }
}
