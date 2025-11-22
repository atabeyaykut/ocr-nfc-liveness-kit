package androidx.room.util;

import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.camera.camera2.internal.c;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.room.ColumnInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TableInfo {
    public static final int CREATED_FROM_DATABASE = 2;
    public static final int CREATED_FROM_ENTITY = 1;
    public static final int CREATED_FROM_UNKNOWN = 0;
    public final Map<String, Column> columns;
    public final Set<ForeignKey> foreignKeys;

    @Nullable
    public final Set<Index> indices;
    public final String name;

    public static class Column {

        @ColumnInfo.SQLiteTypeAffinity
        public final int affinity;
        public final String defaultValue;
        private final int mCreatedFrom;
        public final String name;
        public final boolean notNull;
        public final int primaryKeyPosition;
        public final String type;

        @Deprecated
        public Column(String str, String str2, boolean z10, int r11) {
            this(str, str2, z10, r11, null, 0);
        }

        public Column(String str, String str2, boolean z10, int r42, String str3, int r6) {
            this.name = str;
            this.type = str2;
            this.notNull = z10;
            this.primaryKeyPosition = r42;
            this.affinity = findAffinity(str2);
            this.defaultValue = str3;
            this.mCreatedFrom = r6;
        }

        @ColumnInfo.SQLiteTypeAffinity
        private static int findAffinity(@Nullable String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Column column = (Column) obj;
            if (this.primaryKeyPosition != column.primaryKeyPosition || !this.name.equals(column.name) || this.notNull != column.notNull) {
                return false;
            }
            if (this.mCreatedFrom == 1 && column.mCreatedFrom == 2 && (str3 = this.defaultValue) != null && !str3.equals(column.defaultValue)) {
                return false;
            }
            if (this.mCreatedFrom == 2 && column.mCreatedFrom == 1 && (str2 = column.defaultValue) != null && !str2.equals(this.defaultValue)) {
                return false;
            }
            int r22 = this.mCreatedFrom;
            return (r22 == 0 || r22 != column.mCreatedFrom || ((str = this.defaultValue) == null ? column.defaultValue == null : str.equals(column.defaultValue))) && this.affinity == column.affinity;
        }

        public int hashCode() {
            return (((((this.name.hashCode() * 31) + this.affinity) * 31) + (this.notNull ? 1231 : 1237)) * 31) + this.primaryKeyPosition;
        }

        public boolean isPrimaryKey() {
            return this.primaryKeyPosition > 0;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("Column{name='");
            sb2.append(this.name);
            sb2.append("', type='");
            sb2.append(this.type);
            sb2.append("', affinity='");
            sb2.append(this.affinity);
            sb2.append("', notNull=");
            sb2.append(this.notNull);
            sb2.append(", primaryKeyPosition=");
            sb2.append(this.primaryKeyPosition);
            sb2.append(", defaultValue='");
            return c.h(sb2, this.defaultValue, "'}");
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static class ForeignKey {

        @NonNull
        public final List<String> columnNames;

        @NonNull
        public final String onDelete;

        @NonNull
        public final String onUpdate;

        @NonNull
        public final List<String> referenceColumnNames;

        @NonNull
        public final String referenceTable;

        public ForeignKey(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull List<String> list, @NonNull List<String> list2) {
            this.referenceTable = str;
            this.onDelete = str2;
            this.onUpdate = str3;
            this.columnNames = Collections.unmodifiableList(list);
            this.referenceColumnNames = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ForeignKey foreignKey = (ForeignKey) obj;
            if (this.referenceTable.equals(foreignKey.referenceTable) && this.onDelete.equals(foreignKey.onDelete) && this.onUpdate.equals(foreignKey.onUpdate) && this.columnNames.equals(foreignKey.columnNames)) {
                return this.referenceColumnNames.equals(foreignKey.referenceColumnNames);
            }
            return false;
        }

        public int hashCode() {
            return this.referenceColumnNames.hashCode() + ((this.columnNames.hashCode() + a.a(this.onUpdate, a.a(this.onDelete, this.referenceTable.hashCode() * 31, 31), 31)) * 31);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("ForeignKey{referenceTable='");
            sb2.append(this.referenceTable);
            sb2.append("', onDelete='");
            sb2.append(this.onDelete);
            sb2.append("', onUpdate='");
            sb2.append(this.onUpdate);
            sb2.append("', columnNames=");
            sb2.append(this.columnNames);
            sb2.append(", referenceColumnNames=");
            return android.support.v4.media.a.j(sb2, this.referenceColumnNames, '}');
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static class ForeignKeyWithSequence implements Comparable<ForeignKeyWithSequence> {
        final String mFrom;
        final int mId;
        final int mSequence;
        final String mTo;

        public ForeignKeyWithSequence(int r12, int r22, String str, String str2) {
            this.mId = r12;
            this.mSequence = r22;
            this.mFrom = str;
            this.mTo = str2;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull ForeignKeyWithSequence foreignKeyWithSequence) {
            int r02 = this.mId - foreignKeyWithSequence.mId;
            return r02 == 0 ? this.mSequence - foreignKeyWithSequence.mSequence : r02;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static class Index {
        public static final String DEFAULT_PREFIX = "index_";
        public final List<String> columns;
        public final String name;
        public final boolean unique;

        public Index(String str, boolean z10, List<String> list) {
            this.name = str;
            this.unique = z10;
            this.columns = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Index index = (Index) obj;
            if (this.unique == index.unique && this.columns.equals(index.columns)) {
                return this.name.startsWith(DEFAULT_PREFIX) ? index.name.startsWith(DEFAULT_PREFIX) : this.name.equals(index.name);
            }
            return false;
        }

        public int hashCode() {
            return this.columns.hashCode() + ((((this.name.startsWith(DEFAULT_PREFIX) ? -1184239155 : this.name.hashCode()) * 31) + (this.unique ? 1 : 0)) * 31);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("Index{name='");
            sb2.append(this.name);
            sb2.append("', unique=");
            sb2.append(this.unique);
            sb2.append(", columns=");
            return android.support.v4.media.a.j(sb2, this.columns, '}');
        }
    }

    public TableInfo(String str, Map<String, Column> map, Set<ForeignKey> set) {
        this(str, map, set, Collections.emptySet());
    }

    public TableInfo(String str, Map<String, Column> map, Set<ForeignKey> set, Set<Index> set2) {
        this.name = str;
        this.columns = Collections.unmodifiableMap(map);
        this.foreignKeys = Collections.unmodifiableSet(set);
        this.indices = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public static TableInfo read(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        return new TableInfo(str, readColumns(supportSQLiteDatabase, str), readForeignKeys(supportSQLiteDatabase, str), readIndices(supportSQLiteDatabase, str));
    }

    private static Map<String, Column> readColumns(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor cursorQuery = supportSQLiteDatabase.query("PRAGMA table_info(`" + str + "`)");
        HashMap map = new HashMap();
        try {
            if (cursorQuery.getColumnCount() > 0) {
                int columnIndex = cursorQuery.getColumnIndex("name");
                int columnIndex2 = cursorQuery.getColumnIndex("type");
                int columnIndex3 = cursorQuery.getColumnIndex("notnull");
                int columnIndex4 = cursorQuery.getColumnIndex("pk");
                int columnIndex5 = cursorQuery.getColumnIndex("dflt_value");
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(columnIndex);
                    map.put(string, new Column(string, cursorQuery.getString(columnIndex2), cursorQuery.getInt(columnIndex3) != 0, cursorQuery.getInt(columnIndex4), cursorQuery.getString(columnIndex5), 2));
                }
            }
            return map;
        } finally {
            cursorQuery.close();
        }
    }

    private static List<ForeignKeyWithSequence> readForeignKeyFieldMappings(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex(TypedValues.TransitionType.S_FROM);
        int columnIndex4 = cursor.getColumnIndex(TypedValues.TransitionType.S_TO);
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int r6 = 0; r6 < count; r6++) {
            cursor.moveToPosition(r6);
            arrayList.add(new ForeignKeyWithSequence(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static Set<ForeignKey> readForeignKeys(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        Cursor cursorQuery = supportSQLiteDatabase.query("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = cursorQuery.getColumnIndex("id");
            int columnIndex2 = cursorQuery.getColumnIndex("seq");
            int columnIndex3 = cursorQuery.getColumnIndex("table");
            int columnIndex4 = cursorQuery.getColumnIndex("on_delete");
            int columnIndex5 = cursorQuery.getColumnIndex("on_update");
            List<ForeignKeyWithSequence> foreignKeyFieldMappings = readForeignKeyFieldMappings(cursorQuery);
            int count = cursorQuery.getCount();
            for (int r92 = 0; r92 < count; r92++) {
                cursorQuery.moveToPosition(r92);
                if (cursorQuery.getInt(columnIndex2) == 0) {
                    int r10 = cursorQuery.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (ForeignKeyWithSequence foreignKeyWithSequence : foreignKeyFieldMappings) {
                        if (foreignKeyWithSequence.mId == r10) {
                            arrayList.add(foreignKeyWithSequence.mFrom);
                            arrayList2.add(foreignKeyWithSequence.mTo);
                        }
                    }
                    hashSet.add(new ForeignKey(cursorQuery.getString(columnIndex3), cursorQuery.getString(columnIndex4), cursorQuery.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            cursorQuery.close();
        }
    }

    @Nullable
    private static Index readIndex(SupportSQLiteDatabase supportSQLiteDatabase, String str, boolean z10) {
        Cursor cursorQuery = supportSQLiteDatabase.query("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = cursorQuery.getColumnIndex("seqno");
            int columnIndex2 = cursorQuery.getColumnIndex("cid");
            int columnIndex3 = cursorQuery.getColumnIndex("name");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (cursorQuery.moveToNext()) {
                    if (cursorQuery.getInt(columnIndex2) >= 0) {
                        treeMap.put(Integer.valueOf(cursorQuery.getInt(columnIndex)), cursorQuery.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                return new Index(str, z10, arrayList);
            }
            cursorQuery.close();
            return null;
        } finally {
            cursorQuery.close();
        }
    }

    @Nullable
    private static Set<Index> readIndices(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor cursorQuery = supportSQLiteDatabase.query("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = cursorQuery.getColumnIndex("name");
            int columnIndex2 = cursorQuery.getColumnIndex("origin");
            int columnIndex3 = cursorQuery.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                HashSet hashSet = new HashSet();
                while (cursorQuery.moveToNext()) {
                    if ("c".equals(cursorQuery.getString(columnIndex2))) {
                        String string = cursorQuery.getString(columnIndex);
                        boolean z10 = true;
                        if (cursorQuery.getInt(columnIndex3) != 1) {
                            z10 = false;
                        }
                        Index index = readIndex(supportSQLiteDatabase, string, z10);
                        if (index == null) {
                            return null;
                        }
                        hashSet.add(index);
                    }
                }
                return hashSet;
            }
            return null;
        } finally {
            cursorQuery.close();
        }
    }

    public boolean equals(Object obj) {
        Set<Index> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TableInfo tableInfo = (TableInfo) obj;
        String str = this.name;
        if (str == null ? tableInfo.name != null : !str.equals(tableInfo.name)) {
            return false;
        }
        Map<String, Column> map = this.columns;
        if (map == null ? tableInfo.columns != null : !map.equals(tableInfo.columns)) {
            return false;
        }
        Set<ForeignKey> set2 = this.foreignKeys;
        if (set2 == null ? tableInfo.foreignKeys != null : !set2.equals(tableInfo.foreignKeys)) {
            return false;
        }
        Set<Index> set3 = this.indices;
        if (set3 == null || (set = tableInfo.indices) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.name;
        int r02 = (str != null ? str.hashCode() : 0) * 31;
        Map<String, Column> map = this.columns;
        int r03 = (r02 + (map != null ? map.hashCode() : 0)) * 31;
        Set<ForeignKey> set = this.foreignKeys;
        return r03 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        return "TableInfo{name='" + this.name + "', columns=" + this.columns + ", foreignKeys=" + this.foreignKeys + ", indices=" + this.indices + '}';
    }
}
