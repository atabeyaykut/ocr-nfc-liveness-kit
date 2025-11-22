package net.sf.scuba.smartcards;

/* loaded from: classes2.dex */
public interface FileSystemStructured {
    FileInfo[] getSelectedPath() throws CardServiceException;

    byte[] readBinary(int r12, int r22) throws CardServiceException;

    void selectFile(short s7) throws CardServiceException;
}
