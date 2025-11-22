package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Preconditions;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public final class EditorInfoCompat {
    private static final String CONTENT_MIME_TYPES_INTEROP_KEY = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_MIME_TYPES_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_SELECTION_END_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END";
    private static final String CONTENT_SELECTION_HEAD_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD";
    private static final String CONTENT_SURROUNDING_TEXT_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT";
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;

    @VisibleForTesting
    static final int MAX_INITIAL_SELECTION_LENGTH = 1024;

    @VisibleForTesting
    static final int MEMORY_EFFICIENT_TEXT_LENGTH = 2048;

    @RequiresApi(30)
    public static class Api30Impl {
        private Api30Impl() {
        }

        public static CharSequence getInitialSelectedText(@NonNull EditorInfo editorInfo, int r12) {
            return editorInfo.getInitialSelectedText(r12);
        }

        public static CharSequence getInitialTextAfterCursor(@NonNull EditorInfo editorInfo, int r12, int r22) {
            return editorInfo.getInitialTextAfterCursor(r12, r22);
        }

        public static CharSequence getInitialTextBeforeCursor(@NonNull EditorInfo editorInfo, int r12, int r22) {
            return editorInfo.getInitialTextBeforeCursor(r12, r22);
        }

        public static void setInitialSurroundingSubText(@NonNull EditorInfo editorInfo, CharSequence charSequence, int r22) {
            editorInfo.setInitialSurroundingSubText(charSequence, r22);
        }
    }

    @Deprecated
    public EditorInfoCompat() {
    }

    @NonNull
    public static String[] getContentMimeTypes(@NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : EMPTY_STRING_ARRAY;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return EMPTY_STRING_ARRAY;
        }
        String[] stringArray = bundle.getStringArray(CONTENT_MIME_TYPES_KEY);
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray(CONTENT_MIME_TYPES_INTEROP_KEY);
        }
        return stringArray != null ? stringArray : EMPTY_STRING_ARRAY;
    }

    @Nullable
    public static CharSequence getInitialSelectedText(@NonNull EditorInfo editorInfo, int r72) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getInitialSelectedText(editorInfo, r72);
        }
        if (editorInfo.extras == null) {
            return null;
        }
        int r02 = Math.min(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int r22 = Math.max(editorInfo.initialSelStart, editorInfo.initialSelEnd);
        int r32 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int r42 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        int r23 = r22 - r02;
        if (editorInfo.initialSelStart < 0 || editorInfo.initialSelEnd < 0 || r42 - r32 != r23 || (charSequence = editorInfo.extras.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        return (r72 & 1) != 0 ? charSequence.subSequence(r32, r42) : TextUtils.substring(charSequence, r32, r42);
    }

    @Nullable
    public static CharSequence getInitialTextAfterCursor(@NonNull EditorInfo editorInfo, int r42, int r52) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getInitialTextAfterCursor(editorInfo, r42, r52);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int r32 = editorInfo.extras.getInt(CONTENT_SELECTION_END_KEY);
        int r53 = r52 & 1;
        int r43 = Math.min(r42, charSequence.length() - r32) + r32;
        return r53 != 0 ? charSequence.subSequence(r32, r43) : TextUtils.substring(charSequence, r32, r43);
    }

    @Nullable
    public static CharSequence getInitialTextBeforeCursor(@NonNull EditorInfo editorInfo, int r42, int r52) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getInitialTextBeforeCursor(editorInfo, r42, r52);
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null || (charSequence = bundle.getCharSequence(CONTENT_SURROUNDING_TEXT_KEY)) == null) {
            return null;
        }
        int r32 = editorInfo.extras.getInt(CONTENT_SELECTION_HEAD_KEY);
        int r53 = r52 & 1;
        int r43 = r32 - Math.min(r42, r32);
        return r53 != 0 ? charSequence.subSequence(r43, r32) : TextUtils.substring(charSequence, r43, r32);
    }

    public static int getProtocol(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            return 1;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return 0;
        }
        boolean zContainsKey = bundle.containsKey(CONTENT_MIME_TYPES_KEY);
        boolean zContainsKey2 = editorInfo.extras.containsKey(CONTENT_MIME_TYPES_INTEROP_KEY);
        if (zContainsKey && zContainsKey2) {
            return 4;
        }
        if (zContainsKey) {
            return 3;
        }
        return zContainsKey2 ? 2 : 0;
    }

    private static boolean isCutOnSurrogate(CharSequence charSequence, int r22, int r32) {
        if (r32 == 0) {
            return Character.isLowSurrogate(charSequence.charAt(r22));
        }
        if (r32 != 1) {
            return false;
        }
        return Character.isHighSurrogate(charSequence.charAt(r22));
    }

    private static boolean isPasswordInputType(int r12) {
        int r13 = r12 & 4095;
        return r13 == 129 || r13 == 225 || r13 == 18;
    }

    public static void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_KEY, strArr);
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_INTEROP_KEY, strArr);
    }

    public static void setInitialSurroundingSubText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence, int r72) {
        Preconditions.checkNotNull(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.setInitialSurroundingSubText(editorInfo, charSequence, r72);
            return;
        }
        int r02 = editorInfo.initialSelStart;
        int r12 = editorInfo.initialSelEnd;
        int r22 = r02 > r12 ? r12 - r72 : r02 - r72;
        int r03 = r02 > r12 ? r02 - r72 : r12 - r72;
        int length = charSequence.length();
        if (r72 < 0 || r22 < 0 || r03 > length) {
            setSurroundingText(editorInfo, null, 0, 0);
            return;
        }
        if (isPasswordInputType(editorInfo.inputType)) {
            setSurroundingText(editorInfo, null, 0, 0);
        } else if (length <= 2048) {
            setSurroundingText(editorInfo, charSequence, r22, r03);
        } else {
            trimLongSurroundingText(editorInfo, charSequence, r22, r03);
        }
    }

    public static void setInitialSurroundingText(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.setInitialSurroundingSubText(editorInfo, charSequence, 0);
        } else {
            setInitialSurroundingSubText(editorInfo, charSequence, 0);
        }
    }

    private static void setSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int r42, int r52) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence(CONTENT_SURROUNDING_TEXT_KEY, charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt(CONTENT_SELECTION_HEAD_KEY, r42);
        editorInfo.extras.putInt(CONTENT_SELECTION_END_KEY, r52);
    }

    private static void trimLongSurroundingText(EditorInfo editorInfo, CharSequence charSequence, int r11, int r12) {
        int r02 = r12 - r11;
        int r13 = r02 > 1024 ? 0 : r02;
        int r42 = 2048 - r13;
        int r32 = Math.min(charSequence.length() - r12, r42 - Math.min(r11, (int) (r42 * 0.8d)));
        int r43 = Math.min(r11, r42 - r32);
        int r112 = r11 - r43;
        if (isCutOnSurrogate(charSequence, r112, 0)) {
            r112++;
            r43--;
        }
        if (isCutOnSurrogate(charSequence, (r12 + r32) - 1, 1)) {
            r32--;
        }
        CharSequence charSequenceConcat = r13 != r02 ? TextUtils.concat(charSequence.subSequence(r112, r112 + r43), charSequence.subSequence(r12, r32 + r12)) : charSequence.subSequence(r112, r43 + r13 + r32 + r112);
        int r44 = r43 + 0;
        setSurroundingText(editorInfo, charSequenceConcat, r44, r13 + r44);
    }
}
