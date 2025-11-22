package androidx.room.util;

import android.database.Cursor;
import androidx.annotation.RestrictTo;
import androidx.camera.camera2.internal.c;
import androidx.sqlite.db.SupportSQLiteDatabase;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ViewInfo {
    public final String name;
    public final String sql;

    public ViewInfo(String str, String str2) {
        this.name = str;
        this.sql = str2;
    }

    public static ViewInfo read(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor cursorQuery = supportSQLiteDatabase.query("SELECT name, sql FROM sqlite_master WHERE type = 'view' AND name = '" + str + "'");
        try {
            return cursorQuery.moveToFirst() ? new ViewInfo(cursorQuery.getString(0), cursorQuery.getString(1)) : new ViewInfo(str, null);
        } finally {
            cursorQuery.close();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ViewInfo viewInfo = (ViewInfo) obj;
        String str = this.name;
        if (str == null ? viewInfo.name == null : str.equals(viewInfo.name)) {
            String str2 = this.sql;
            String str3 = viewInfo.sql;
            if (str2 != null) {
                if (str2.equals(str3)) {
                    return true;
                }
            } else if (str3 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.name;
        int r02 = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.sql;
        return r02 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ViewInfo{name='");
        sb2.append(this.name);
        sb2.append("', sql='");
        return c.h(sb2, this.sql, "'}");
    }
}
