package androidx.sqlite.db;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {

    @Nullable
    private final Object[] mBindArgs;
    private final String mQuery;

    public SimpleSQLiteQuery(String str) {
        this(str, null);
    }

    public SimpleSQLiteQuery(String str, @Nullable Object[] objArr) {
        this.mQuery = str;
        this.mBindArgs = objArr;
    }

    private static void bind(SupportSQLiteProgram supportSQLiteProgram, int r32, Object obj) {
        long jLongValue;
        int r42;
        double dDoubleValue;
        if (obj == null) {
            supportSQLiteProgram.bindNull(r32);
            return;
        }
        if (obj instanceof byte[]) {
            supportSQLiteProgram.bindBlob(r32, (byte[]) obj);
            return;
        }
        if (obj instanceof Float) {
            dDoubleValue = ((Float) obj).floatValue();
        } else {
            if (!(obj instanceof Double)) {
                if (obj instanceof Long) {
                    jLongValue = ((Long) obj).longValue();
                } else {
                    if (obj instanceof Integer) {
                        r42 = ((Integer) obj).intValue();
                    } else if (obj instanceof Short) {
                        r42 = ((Short) obj).shortValue();
                    } else if (obj instanceof Byte) {
                        r42 = ((Byte) obj).byteValue();
                    } else {
                        if (obj instanceof String) {
                            supportSQLiteProgram.bindString(r32, (String) obj);
                            return;
                        }
                        if (!(obj instanceof Boolean)) {
                            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + r32 + " Supported types: null, byte[], float, double, long, int, short, byte, string");
                        }
                        jLongValue = ((Boolean) obj).booleanValue() ? 1L : 0L;
                    }
                    jLongValue = r42;
                }
                supportSQLiteProgram.bindLong(r32, jLongValue);
                return;
            }
            dDoubleValue = ((Double) obj).doubleValue();
        }
        supportSQLiteProgram.bindDouble(r32, dDoubleValue);
    }

    public static void bind(SupportSQLiteProgram supportSQLiteProgram, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int r12 = 0;
        while (r12 < length) {
            Object obj = objArr[r12];
            r12++;
            bind(supportSQLiteProgram, r12, obj);
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        bind(supportSQLiteProgram, this.mBindArgs);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public int getArgCount() {
        Object[] objArr = this.mBindArgs;
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public String getSql() {
        return this.mQuery;
    }
}
