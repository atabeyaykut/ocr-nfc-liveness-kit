package androidx.sqlite.db;

import java.io.Closeable;

/* loaded from: classes.dex */
public interface SupportSQLiteProgram extends Closeable {
    void bindBlob(int r12, byte[] bArr);

    void bindDouble(int r12, double d10);

    void bindLong(int r12, long j10);

    void bindNull(int r12);

    void bindString(int r12, String str);

    void clearBindings();
}
