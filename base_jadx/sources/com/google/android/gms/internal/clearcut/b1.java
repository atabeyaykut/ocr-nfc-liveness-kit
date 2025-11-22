package com.google.android.gms.internal.clearcut;

import java.io.IOException;

/* loaded from: classes.dex */
public class b1 extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3033a = 0;

    public b1(String str) {
        super(str);
    }

    public static b1 a() {
        return new b1("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static b1 b() {
        return new b1("Failed to parse the message.");
    }

    public static b1 c() {
        return new b1("Protocol message had invalid UTF-8.");
    }
}
