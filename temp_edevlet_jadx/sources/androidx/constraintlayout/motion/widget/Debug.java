package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.media.a;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.browser.browseractions.b;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.nio.CharBuffer;
import net.sf.scuba.smartcards.BuildConfig;

@SuppressLint({"LogConditional"})
/* loaded from: classes.dex */
public class Debug {
    public static void dumpLayoutParams(ViewGroup.LayoutParams layoutParams, String str) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + str + "  ";
        PrintStream printStream = System.out;
        StringBuilder sbL = a.l(" >>>>>>>>>>>>>>>>>>. dump ", str2, "  ");
        sbL.append(layoutParams.getClass().getName());
        printStream.println(sbL.toString());
        for (Field field : layoutParams.getClass().getFields()) {
            try {
                Object obj = field.get(layoutParams);
                String name = field.getName();
                if (name.contains("To") && !obj.toString().equals("-1")) {
                    System.out.println(str2 + "       " + name + " " + obj);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(" <<<<<<<<<<<<<<<<< dump " + str2);
    }

    public static void dumpPoc(Object obj) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
        Class<?> cls = obj.getClass();
        PrintStream printStream = System.out;
        StringBuilder sbI = b.i(str, "------------- ");
        sbI.append(cls.getName());
        sbI.append(" --------------------");
        printStream.println(sbI.toString());
        for (Field field : cls.getFields()) {
            try {
                Object obj2 = field.get(obj);
                if (field.getName().startsWith("layout_constraint") && ((!(obj2 instanceof Integer) || !obj2.toString().equals("-1")) && ((!(obj2 instanceof Integer) || !obj2.toString().equals("0")) && ((!(obj2 instanceof Float) || !obj2.toString().equals(BuildConfig.VERSION_NAME)) && (!(obj2 instanceof Float) || !obj2.toString().equals("0.5")))))) {
                    System.out.println(str + "    " + field.getName() + " " + obj2);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        PrintStream printStream2 = System.out;
        StringBuilder sbI2 = b.i(str, "------------- ");
        sbI2.append(cls.getSimpleName());
        sbI2.append(" --------------------");
        printStream2.println(sbI2.toString());
    }

    public static String getActionType(MotionEvent motionEvent) throws SecurityException {
        int action = motionEvent.getAction();
        for (Field field : MotionEvent.class.getFields()) {
            if (Modifier.isStatic(field.getModifiers()) && field.getType().equals(Integer.TYPE) && field.getInt(null) == action) {
                return field.getName();
            }
        }
        return "---";
    }

    public static String getCallFrom(int r22) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[r22 + 2];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLoc() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "()";
    }

    public static String getLocation() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLocation2() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getName(Context context, int r22) {
        if (r22 == -1) {
            return "UNKNOWN";
        }
        try {
            return context.getResources().getResourceEntryName(r22);
        } catch (Exception unused) {
            return a.d("?", r22);
        }
    }

    public static String getName(Context context, int[] r6) throws Resources.NotFoundException {
        String resourceEntryName;
        try {
            String str = r6.length + "[";
            int r12 = 0;
            while (r12 < r6.length) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(r12 == 0 ? "" : " ");
                String string = sb2.toString();
                try {
                    resourceEntryName = context.getResources().getResourceEntryName(r6[r12]);
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = "? " + r6[r12] + " ";
                }
                str = string + resourceEntryName;
                r12++;
            }
            return str + "]";
        } catch (Exception e10) {
            Log.v("DEBUG", e10.toString());
            return "UNKNOWN";
        }
    }

    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }

    public static String getState(MotionLayout motionLayout, int r22) {
        return getState(motionLayout, r22, -1);
    }

    public static String getState(MotionLayout motionLayout, int r32, int r42) throws Resources.NotFoundException {
        int length;
        if (r32 == -1) {
            return "UNDEFINED";
        }
        String resourceEntryName = motionLayout.getContext().getResources().getResourceEntryName(r32);
        if (r42 == -1) {
            return resourceEntryName;
        }
        if (resourceEntryName.length() > r42) {
            resourceEntryName = resourceEntryName.replaceAll("([^_])[aeiou]+", "$1");
        }
        if (resourceEntryName.length() <= r42 || (length = resourceEntryName.replaceAll("[^_]", "").length()) <= 0) {
            return resourceEntryName;
        }
        return resourceEntryName.replaceAll(CharBuffer.allocate((resourceEntryName.length() - r42) / length).toString().replace((char) 0, '.') + "_", "_");
    }

    public static void logStack(String str, String str2, int r82) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int r83 = Math.min(r82, stackTrace.length - 1);
        String strF = " ";
        for (int r22 = 1; r22 <= r83; r22++) {
            StackTraceElement stackTraceElement = stackTrace[r22];
            String str3 = ".(" + stackTrace[r22].getFileName() + ":" + stackTrace[r22].getLineNumber() + ") " + stackTrace[r22].getMethodName();
            strF = a.f(strF, " ");
            Log.v(str, str2 + strF + str3 + strF);
        }
    }

    public static void printStack(String str, int r82) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int r83 = Math.min(r82, stackTrace.length - 1);
        String strF = " ";
        for (int r22 = 1; r22 <= r83; r22++) {
            StackTraceElement stackTraceElement = stackTrace[r22];
            String str2 = ".(" + stackTrace[r22].getFileName() + ":" + stackTrace[r22].getLineNumber() + ") ";
            strF = a.f(strF, " ");
            System.out.println(str + strF + str2 + strF);
        }
    }

    public static void dumpLayoutParams(ViewGroup viewGroup, String str) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + str + "  ";
        int childCount = viewGroup.getChildCount();
        System.out.println(str + " children " + childCount);
        for (int r11 = 0; r11 < childCount; r11++) {
            View childAt = viewGroup.getChildAt(r11);
            PrintStream printStream = System.out;
            StringBuilder sbI = b.i(str2, "     ");
            sbI.append(getName(childAt));
            printStream.println(sbI.toString());
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            for (Field field : layoutParams.getClass().getFields()) {
                try {
                    Object obj = field.get(layoutParams);
                    if (field.getName().contains("To") && !obj.toString().equals("-1")) {
                        System.out.println(str2 + "       " + field.getName() + " " + obj);
                    }
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }
}
