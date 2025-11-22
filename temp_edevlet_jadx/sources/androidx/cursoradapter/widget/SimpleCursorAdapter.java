package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RestrictTo;

/* loaded from: classes.dex */
public class SimpleCursorAdapter extends ResourceCursorAdapter {
    private CursorToStringConverter mCursorToStringConverter;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected int[] mFrom;
    String[] mOriginalFrom;
    private int mStringConversionColumn;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected int[] mTo;
    private ViewBinder mViewBinder;

    public interface CursorToStringConverter {
        CharSequence convertToString(Cursor cursor);
    }

    public interface ViewBinder {
        boolean setViewValue(View view, Cursor cursor, int r32);
    }

    @Deprecated
    public SimpleCursorAdapter(Context context, int r22, Cursor cursor, String[] strArr, int[] r52) {
        super(context, r22, cursor);
        this.mStringConversionColumn = -1;
        this.mTo = r52;
        this.mOriginalFrom = strArr;
        findColumns(cursor, strArr);
    }

    public SimpleCursorAdapter(Context context, int r22, Cursor cursor, String[] strArr, int[] r52, int r6) {
        super(context, r22, cursor, r6);
        this.mStringConversionColumn = -1;
        this.mTo = r52;
        this.mOriginalFrom = strArr;
        findColumns(cursor, strArr);
    }

    private void findColumns(Cursor cursor, String[] strArr) {
        if (cursor == null) {
            this.mFrom = null;
            return;
        }
        int length = strArr.length;
        int[] r12 = this.mFrom;
        if (r12 == null || r12.length != length) {
            this.mFrom = new int[length];
        }
        for (int r13 = 0; r13 < length; r13++) {
            this.mFrom[r13] = cursor.getColumnIndexOrThrow(strArr[r13]);
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        ViewBinder viewBinder = this.mViewBinder;
        int[] r02 = this.mTo;
        int length = r02.length;
        int[] r22 = this.mFrom;
        for (int r42 = 0; r42 < length; r42++) {
            View viewFindViewById = view.findViewById(r02[r42]);
            if (viewFindViewById != null) {
                if (viewBinder != null ? viewBinder.setViewValue(viewFindViewById, cursor, r22[r42]) : false) {
                    continue;
                } else {
                    String string = cursor.getString(r22[r42]);
                    if (string == null) {
                        string = "";
                    }
                    if (viewFindViewById instanceof TextView) {
                        setViewText((TextView) viewFindViewById, string);
                    } else {
                        if (!(viewFindViewById instanceof ImageView)) {
                            throw new IllegalStateException(viewFindViewById.getClass().getName().concat(" is not a  view that can be bounds by this SimpleCursorAdapter"));
                        }
                        setViewImage((ImageView) viewFindViewById, string);
                    }
                }
            }
        }
    }

    public void changeCursorAndColumns(Cursor cursor, String[] strArr, int[] r32) {
        this.mOriginalFrom = strArr;
        this.mTo = r32;
        findColumns(cursor, strArr);
        super.changeCursor(cursor);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public CharSequence convertToString(Cursor cursor) {
        CursorToStringConverter cursorToStringConverter = this.mCursorToStringConverter;
        if (cursorToStringConverter != null) {
            return cursorToStringConverter.convertToString(cursor);
        }
        int r02 = this.mStringConversionColumn;
        return r02 > -1 ? cursor.getString(r02) : super.convertToString(cursor);
    }

    public CursorToStringConverter getCursorToStringConverter() {
        return this.mCursorToStringConverter;
    }

    public int getStringConversionColumn() {
        return this.mStringConversionColumn;
    }

    public ViewBinder getViewBinder() {
        return this.mViewBinder;
    }

    public void setCursorToStringConverter(CursorToStringConverter cursorToStringConverter) {
        this.mCursorToStringConverter = cursorToStringConverter;
    }

    public void setStringConversionColumn(int r12) {
        this.mStringConversionColumn = r12;
    }

    public void setViewBinder(ViewBinder viewBinder) {
        this.mViewBinder = viewBinder;
    }

    public void setViewImage(ImageView imageView, String str) {
        try {
            imageView.setImageResource(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            imageView.setImageURI(Uri.parse(str));
        }
    }

    public void setViewText(TextView textView, String str) {
        textView.setText(str);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public Cursor swapCursor(Cursor cursor) {
        findColumns(cursor, this.mOriginalFrom);
        return super.swapCursor(cursor);
    }
}
