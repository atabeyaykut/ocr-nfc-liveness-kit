package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes.dex */
public class z6 extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3860a = 0;

    public z6(String str) {
        super(str);
    }

    public static z6 a() {
        return new z6("Protocol message had invalid UTF-8.");
    }

    public static z6 b() {
        return new z6("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static z6 c() {
        return new z6("Failed to parse the message.");
    }

    public static z6 d() {
        return new z6("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
