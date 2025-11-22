package net.sf.scuba.smartcards;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class CardFileInputStream extends InputStream {
    private static final Logger LOGGER = Logger.getLogger("net.sf.scuba");
    private final byte[] buffer;
    private int bufferLength;
    private int fileLength;
    private FileSystemStructured fs;
    private int markedOffset;
    private int offsetBufferInFile;
    private int offsetInBuffer;
    private FileInfo[] path;

    public CardFileInputStream(int r6, FileSystemStructured fileSystemStructured) throws CardServiceException {
        this.fs = fileSystemStructured;
        synchronized (fileSystemStructured) {
            FileInfo[] selectedPath = fileSystemStructured.getSelectedPath();
            if (selectedPath == null || selectedPath.length < 1) {
                throw new CardServiceException("No valid file selected, path = " + Arrays.toString(selectedPath));
            }
            FileInfo[] fileInfoArr = new FileInfo[selectedPath.length];
            this.path = fileInfoArr;
            System.arraycopy(selectedPath, 0, fileInfoArr, 0, selectedPath.length);
            this.fileLength = selectedPath[selectedPath.length - 1].getFileLength();
            this.buffer = new byte[r6];
            this.bufferLength = 0;
            this.offsetBufferInFile = 0;
            this.offsetInBuffer = 0;
            this.markedOffset = -1;
        }
    }

    private int fillBufferFromFile(FileInfo[] fileInfoArr, int r82, int r92) throws CardServiceException {
        synchronized (this.fs) {
            if (r92 > this.buffer.length) {
                throw new IllegalArgumentException("length too big");
            }
            if (!Arrays.equals(this.fs.getSelectedPath(), fileInfoArr)) {
                for (FileInfo fileInfo : fileInfoArr) {
                    this.fs.selectFile(fileInfo.getFID());
                }
            }
            byte[] binary = this.fs.readBinary(r82, r92);
            if (binary == null) {
                return 0;
            }
            System.arraycopy(binary, 0, this.buffer, 0, binary.length);
            return binary.length;
        }
    }

    @Override // java.io.InputStream
    public synchronized int available() {
        return this.bufferLength - this.offsetInBuffer;
    }

    public int getLength() {
        return this.fileLength;
    }

    public int getPostion() {
        return this.offsetBufferInFile + this.offsetInBuffer;
    }

    @Override // java.io.InputStream
    public void mark(int r32) {
        synchronized (this.fs) {
            this.markedOffset = this.offsetBufferInFile + this.offsetInBuffer;
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        synchronized (this.fs) {
        }
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        synchronized (this.fs) {
            try {
                try {
                    if (!Arrays.equals(this.path, this.fs.getSelectedPath())) {
                        for (FileInfo fileInfo : this.path) {
                            this.fs.selectFile(fileInfo.getFID());
                        }
                    }
                    int r12 = this.offsetBufferInFile;
                    int r32 = this.offsetInBuffer;
                    int r13 = r12 + r32;
                    int r42 = this.fileLength;
                    if (r13 >= r42) {
                        return -1;
                    }
                    if (r32 >= this.bufferLength) {
                        int r14 = Math.min(this.buffer.length, r42 - r13);
                        try {
                            try {
                                int r33 = this.offsetBufferInFile + this.bufferLength;
                                int r43 = 0;
                                while (r43 == 0) {
                                    r43 = fillBufferFromFile(this.path, r33, r14);
                                }
                                this.offsetBufferInFile = r33;
                                this.offsetInBuffer = 0;
                                this.bufferLength = r43;
                            } catch (CardServiceException e10) {
                                throw new IOException("Unexpected exception", e10);
                            }
                        } catch (Exception e11) {
                            throw new IOException("Unexpected exception", e11);
                        }
                    }
                    byte[] bArr = this.buffer;
                    int r22 = this.offsetInBuffer;
                    int r15 = bArr[r22] & 255;
                    this.offsetInBuffer = r22 + 1;
                    return r15;
                } catch (CardServiceException e12) {
                    throw new IOException("Unexpected exception", e12);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this.fs) {
            int r12 = this.markedOffset;
            if (r12 < 0) {
                throw new IOException("Mark not set");
            }
            this.offsetBufferInFile = r12;
            this.offsetInBuffer = 0;
            this.bufferLength = 0;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        synchronized (this.fs) {
            int r12 = this.bufferLength;
            int r22 = this.offsetInBuffer;
            if (j10 < r12 - r22) {
                this.offsetInBuffer = (int) (r22 + j10);
            } else {
                this.offsetBufferInFile = (int) (this.offsetBufferInFile + r22 + j10);
                this.offsetInBuffer = 0;
                this.bufferLength = 0;
            }
        }
        return j10;
    }
}
