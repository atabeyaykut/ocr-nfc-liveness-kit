package yc;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class w extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public final b f19651a;

    public w(b bVar) {
        super("stream was reset: " + bVar);
        this.f19651a = bVar;
    }
}
