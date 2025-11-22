package androidx.constraintlayout.core.motion.utils;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes.dex */
public class Utils {
    static DebugHandle ourHandle;

    public interface DebugHandle {
        void message(String str);
    }

    private static int clamp(int r12) {
        int r13 = (r12 & (~(r12 >> 31))) - 255;
        return (r13 & (r13 >> 31)) + 255;
    }

    public static void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String strSubstring = (stackTraceElement.getMethodName() + "                  ").substring(0, 17);
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")" + "    ".substring(Integer.toString(stackTraceElement.getLineNumber()).length()) + strSubstring;
        System.out.println(str2 + " " + str);
        DebugHandle debugHandle = ourHandle;
        if (debugHandle != null) {
            debugHandle.message(str2 + " " + str);
        }
    }

    public static void log(String str, String str2) {
        System.out.println(str + " : " + str2);
    }

    public static void logStack(String str, int r82) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int r83 = Math.min(r82, stackTrace.length - 1);
        String strF = " ";
        for (int r22 = 1; r22 <= r83; r22++) {
            StackTraceElement stackTraceElement = stackTrace[r22];
            String str2 = ".(" + stackTrace[r22].getFileName() + ":" + stackTrace[r22].getLineNumber() + ") " + stackTrace[r22].getMethodName();
            strF = android.support.v4.media.a.f(strF, " ");
            System.out.println(str + strF + str2 + strF);
        }
    }

    public static void loge(String str, String str2) {
        System.err.println(str + " : " + str2);
    }

    public static int rgbaTocColor(float f, float f10, float f11, float f12) {
        int r12 = clamp((int) (f * 255.0f));
        int r22 = clamp((int) (f10 * 255.0f));
        return (r12 << 16) | (clamp((int) (f12 * 255.0f)) << 24) | (r22 << 8) | clamp((int) (f11 * 255.0f));
    }

    public static void setDebugHandle(DebugHandle debugHandle) {
        ourHandle = debugHandle;
    }

    public static void socketSend(String str) throws IOException {
        try {
            OutputStream outputStream = new Socket("127.0.0.1", 5327).getOutputStream();
            outputStream.write(str.getBytes());
            outputStream.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public int getInterpolatedColor(float[] fArr) {
        return (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }
}
