package org.ejbca.cvc.example;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class FileHelper {
    private FileHelper() {
    }

    public static byte[] loadFile(File file) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            int length = (int) file.length();
            byte[] bArr = new byte[length];
            FileInputStream fileInputStream2 = new FileInputStream(file);
            boolean z10 = true;
            int r6 = 0;
            while (z10) {
                try {
                    int r52 = fileInputStream2.read(bArr, r6, length - r6);
                    r6 += r52;
                    z10 = r52 > 0 && r6 != length;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e10) {
                            System.out.println("loadFile - error when closing: " + e10);
                        }
                    }
                    throw th;
                }
            }
            try {
                fileInputStream2.close();
            } catch (IOException e11) {
                System.out.println("loadFile - error when closing: " + e11);
            }
            return bArr;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static byte[] loadFile(String str) throws IOException {
        return loadFile(new File(str));
    }

    public static void writeFile(File file, byte[] bArr) throws Throwable {
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file), 1000);
            try {
                bufferedOutputStream2.write(bArr);
                bufferedOutputStream2.close();
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = bufferedOutputStream2;
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
