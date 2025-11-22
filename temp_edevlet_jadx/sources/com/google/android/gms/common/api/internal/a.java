package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import n3.a;
import n3.h;
import o3.e0;
import r3.r;

/* loaded from: classes.dex */
public abstract class a<R extends h, A> extends BasePendingResult<R> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NonNull n3.a aVar, @NonNull e0 e0Var) {
        super(e0Var);
        if (e0Var == null) {
            throw new NullPointerException("GoogleApiClient must not be null");
        }
        if (aVar == null) {
            throw new NullPointerException("Api must not be null");
        }
    }

    public abstract void i(@NonNull a.e eVar) throws RemoteException;

    public final void j(@NonNull Status status) {
        r.b(!(status.f2979b <= 0), "Failed result must not be success");
        e(b(status));
    }
}
