package com.google.android.gms.internal.vision;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class c extends m0 {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.internal.clearcut.b0 f3911a = new com.google.android.gms.internal.clearcut.b0();

    @Override // com.google.android.gms.internal.vision.m0
    public final void c(Exception exc) {
        Object obj;
        exc.printStackTrace();
        com.google.android.gms.internal.clearcut.b0 b0Var = this.f3911a;
        Object obj2 = b0Var.f3032b;
        while (true) {
            Reference referencePoll = ((ReferenceQueue) obj2).poll();
            obj = b0Var.f3031a;
            if (referencePoll == null) {
                break;
            } else {
                ((ConcurrentHashMap) obj).remove(referencePoll);
            }
        }
        List<Throwable> list = (List) ((ConcurrentHashMap) obj).get(new b(exc, null));
        if (list == null) {
            return;
        }
        synchronized (list) {
            for (Throwable th2 : list) {
                System.err.print("Suppressed: ");
                th2.printStackTrace();
            }
        }
    }
}
