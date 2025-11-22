package com.google.android.gms.internal.vision;

import java.io.IOException;

/* loaded from: classes.dex */
public class q1 extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f4048a = 0;

    public q1(String str) {
        super(str);
    }

    public static q1 a() {
        return new q1("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static q1 b() {
        return new q1("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static q1 c() {
        return new q1("Failed to parse the message.");
    }

    public static q1 d() {
        return new q1("Protocol message had invalid UTF-8.");
    }
}
