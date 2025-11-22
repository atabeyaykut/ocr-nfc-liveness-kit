package androidx.room.util;

import android.database.Cursor;
import android.database.MatrixCursor;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class CursorUtil {
    private CursorUtil() {
    }

    @NonNull
    public static Cursor copyAndClose(@NonNull Cursor cursor) {
        try {
            MatrixCursor matrixCursor = new MatrixCursor(cursor.getColumnNames(), cursor.getCount());
            while (cursor.moveToNext()) {
                Object[] objArr = new Object[cursor.getColumnCount()];
                for (int r22 = 0; r22 < cursor.getColumnCount(); r22++) {
                    int type = cursor.getType(r22);
                    if (type == 0) {
                        objArr[r22] = null;
                    } else if (type == 1) {
                        objArr[r22] = Long.valueOf(cursor.getLong(r22));
                    } else if (type == 2) {
                        objArr[r22] = Double.valueOf(cursor.getDouble(r22));
                    } else if (type == 3) {
                        objArr[r22] = cursor.getString(r22);
                    } else {
                        if (type != 4) {
                            throw new IllegalStateException();
                        }
                        objArr[r22] = cursor.getBlob(r22);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            return matrixCursor;
        } finally {
            cursor.close();
        }
    }

    public static int getColumnIndex(@NonNull Cursor cursor, @NonNull String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        return cursor.getColumnIndex("`" + str + "`");
    }

    public static int getColumnIndexOrThrow(@NonNull Cursor cursor, @NonNull String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        return cursor.getColumnIndexOrThrow("`" + str + "`");
    }
}
