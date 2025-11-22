package com.airbnb.epoxy;

import com.airbnb.epoxy.g0;

/* loaded from: classes.dex */
public final class j extends g0 {

    /* renamed from: c, reason: collision with root package name */
    public static final a f2592c = new a();

    public class a implements g0.c {
    }

    public j(int r22) {
        super(r22);
        if (this.f2575a) {
            throw new IllegalStateException("Notifications already paused");
        }
        this.f2575a = true;
    }
}
