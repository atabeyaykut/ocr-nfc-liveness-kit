package org.jmrtd.io;

import java.io.IOException;
import java.io.InputStream;
import org.jmrtd.io.FragmentBuffer;

/* loaded from: classes2.dex */
public class InputStreamBuffer {
    private FragmentBuffer buffer;
    private PositionInputStream carrier;

    public class SubInputStream extends InputStream {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private Object syncObject;
        private int position = 0;
        private int markedPosition = -1;

        public SubInputStream(Object obj) {
            this.syncObject = obj;
        }

        private void syncCarrierPosition(int r82) throws IOException {
            long j10 = r82;
            if (j10 == InputStreamBuffer.this.carrier.getPosition()) {
                return;
            }
            InputStreamBuffer.this.carrier.reset();
            int r22 = 0;
            while (r22 < r82) {
                long j11 = r22;
                r22 = (int) (InputStreamBuffer.this.carrier.skip(j10 - j11) + j11);
            }
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return InputStreamBuffer.this.buffer.getBufferedLength(this.position);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public FragmentBuffer getBuffer() {
            return InputStreamBuffer.this.buffer;
        }

        public int getPosition() {
            return this.position;
        }

        @Override // java.io.InputStream
        public synchronized void mark(int r12) {
            this.markedPosition = this.position;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            synchronized (this.syncObject) {
                if (this.position >= InputStreamBuffer.this.buffer.getLength()) {
                    return -1;
                }
                if (InputStreamBuffer.this.buffer.isCoveredByFragment(this.position)) {
                    byte[] buffer = InputStreamBuffer.this.buffer.getBuffer();
                    int r22 = this.position;
                    this.position = r22 + 1;
                    return buffer[r22] & 255;
                }
                if (InputStreamBuffer.this.carrier.markSupported()) {
                    syncCarrierPosition(this.position);
                }
                try {
                    int r12 = InputStreamBuffer.this.carrier.read();
                    if (r12 < 0) {
                        return -1;
                    }
                    FragmentBuffer fragmentBuffer = InputStreamBuffer.this.buffer;
                    int r32 = this.position;
                    this.position = r32 + 1;
                    fragmentBuffer.addFragment(r32, (byte) r12);
                    return r12;
                } catch (IOException e10) {
                    throw e10;
                }
            }
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            int r42;
            synchronized (this.syncObject) {
                r42 = read(bArr, 0, bArr.length);
            }
            return r42;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int r72, int r82) throws IOException {
            synchronized (this.syncObject) {
                if (bArr == null) {
                    throw new NullPointerException();
                }
                if (r72 < 0 || r82 < 0 || r82 > bArr.length - r72) {
                    throw new IndexOutOfBoundsException();
                }
                if (r82 == 0) {
                    return 0;
                }
                if (r82 > InputStreamBuffer.this.buffer.getLength() - this.position) {
                    r82 = InputStreamBuffer.this.buffer.getLength() - this.position;
                }
                if (this.position >= InputStreamBuffer.this.buffer.getLength()) {
                    return -1;
                }
                if (InputStreamBuffer.this.carrier.markSupported()) {
                    syncCarrierPosition(this.position);
                }
                FragmentBuffer.Fragment smallestUnbufferedFragment = InputStreamBuffer.this.buffer.getSmallestUnbufferedFragment(this.position, r82);
                if (smallestUnbufferedFragment.getLength() <= 0) {
                    int r83 = Math.min(r82, InputStreamBuffer.this.buffer.getLength() - this.position);
                    System.arraycopy(InputStreamBuffer.this.buffer.getBuffer(), this.position, bArr, r72, r83);
                    this.position += r83;
                    return r83;
                }
                int offset = smallestUnbufferedFragment.getOffset() - this.position;
                int length = smallestUnbufferedFragment.getLength();
                System.arraycopy(InputStreamBuffer.this.buffer.getBuffer(), this.position, bArr, r72, offset);
                this.position += offset;
                if (InputStreamBuffer.this.carrier.markSupported()) {
                    syncCarrierPosition(this.position);
                }
                int r73 = r72 + offset;
                int r22 = InputStreamBuffer.this.carrier.read(bArr, r73, length);
                InputStreamBuffer.this.buffer.addFragment(smallestUnbufferedFragment.getOffset(), bArr, r73, r22);
                this.position += r22;
                return offset + r22;
            }
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            int r02 = this.markedPosition;
            if (r02 < 0) {
                throw new IOException("Invalid reset, was mark() called?");
            }
            this.position = r02;
        }

        @Override // java.io.InputStream
        public long skip(long j10) throws IOException {
            long jSkip;
            synchronized (this.syncObject) {
                int bufferedLength = InputStreamBuffer.this.buffer.getBufferedLength(this.position);
                long j11 = bufferedLength;
                if (j10 <= j11) {
                    this.position = (int) (this.position + j10);
                    return j10;
                }
                this.position += bufferedLength;
                if (InputStreamBuffer.this.carrier.markSupported()) {
                    syncCarrierPosition(this.position);
                    jSkip = InputStreamBuffer.this.carrier.skip(j10 - j11);
                    this.position += (int) jSkip;
                } else {
                    jSkip = super.skip(j10 - j11);
                }
                return j11 + jSkip;
            }
        }
    }

    public InputStreamBuffer(InputStream inputStream, int r32) {
        PositionInputStream positionInputStream = new PositionInputStream(inputStream);
        this.carrier = positionInputStream;
        positionInputStream.mark(r32);
        this.buffer = new FragmentBuffer(r32);
    }

    public synchronized int getBytesBuffered() {
        return this.buffer.getBytesBuffered();
    }

    public SubInputStream getInputStream() {
        SubInputStream subInputStream;
        synchronized (this.carrier) {
            subInputStream = new SubInputStream(this.carrier);
        }
        return subInputStream;
    }

    public int getLength() {
        return this.buffer.getLength();
    }

    public synchronized int getPosition() {
        return this.buffer.getPosition();
    }

    public String toString() {
        return "InputStreamBuffer [" + this.buffer + "]";
    }

    public void updateFrom(InputStreamBuffer inputStreamBuffer) {
        this.buffer.updateFrom(inputStreamBuffer.buffer);
    }
}
