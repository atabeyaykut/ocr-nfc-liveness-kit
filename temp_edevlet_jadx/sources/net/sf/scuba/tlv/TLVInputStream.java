package net.sf.scuba.tlv;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public class TLVInputStream extends InputStream {
    private static final Logger LOGGER = Logger.getLogger("net.sf.scuba.tlv");
    private static final int MAX_BUFFER_LENGTH = 65535;
    private int bufferSize;
    private DataInputStream inputStream;
    private TLVInputState markedState;
    private final InputStream originalInputStream;
    private TLVInputState state;

    public TLVInputStream(InputStream inputStream) {
        this.bufferSize = 0;
        try {
            if ((inputStream instanceof BufferedInputStream) || (inputStream instanceof ByteArrayInputStream)) {
                this.bufferSize = inputStream.available();
            }
        } catch (IOException e10) {
            LOGGER.log(Level.WARNING, "Exception reading from stream", (Throwable) e10);
        }
        this.originalInputStream = inputStream;
        this.inputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        this.state = new TLVInputState();
        this.markedState = null;
    }

    private long skipValue() throws IOException {
        if (this.state.isAtStartOfTag() || this.state.isAtStartOfLength()) {
            return 0L;
        }
        return skip(this.state.getValueBytesLeft());
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.inputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inputStream.close();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int r22) {
        this.inputStream.mark(r22);
        this.markedState = new TLVInputState(this.state);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.inputStream.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int r02 = this.inputStream.read();
        if (r02 < 0) {
            return -1;
        }
        this.state.updateValueBytesProcessed(1);
        return r02;
    }

    public int readLength() throws IOException {
        try {
            if (!this.state.isAtStartOfLength()) {
                throw new IllegalStateException("Not at start of length");
            }
            int unsignedByte = this.inputStream.readUnsignedByte();
            int r22 = 1;
            if ((unsignedByte & 128) != 0) {
                int r02 = unsignedByte & CertificateBody.profileType;
                int unsignedByte2 = 0;
                int r32 = 1;
                for (int r23 = 0; r23 < r02; r23++) {
                    r32++;
                    unsignedByte2 = (unsignedByte2 << 8) | this.inputStream.readUnsignedByte();
                }
                unsignedByte = unsignedByte2;
                r22 = r32;
            }
            this.state.setLengthProcessed(unsignedByte, r22);
            return unsignedByte;
        } catch (IOException e10) {
            throw e10;
        }
    }

    public int readTag() throws IOException {
        int unsignedByte;
        if (!this.state.isAtStartOfTag() && !this.state.isProcessingValue()) {
            throw new IllegalStateException("Not at start of tag");
        }
        try {
            int unsignedByte2 = this.inputStream.readUnsignedByte();
            int r12 = 1;
            while (true) {
                if (unsignedByte2 != 0 && unsignedByte2 != 255) {
                    break;
                }
                unsignedByte2 = this.inputStream.readUnsignedByte();
                r12++;
            }
            if ((unsignedByte2 & 31) == 31) {
                DataInputStream dataInputStream = this.inputStream;
                while (true) {
                    unsignedByte = dataInputStream.readUnsignedByte();
                    r12++;
                    if ((unsignedByte & 128) != 128) {
                        break;
                    }
                    unsignedByte2 = (unsignedByte2 << 8) | (unsignedByte & CertificateBody.profileType);
                    dataInputStream = this.inputStream;
                }
                unsignedByte2 = (unsignedByte2 << 8) | (unsignedByte & CertificateBody.profileType);
            }
            this.state.setTagProcessed(unsignedByte2, r12);
            return unsignedByte2;
        } catch (IOException e10) {
            throw e10;
        }
    }

    public byte[] readValue() throws IOException {
        try {
            if (!this.state.isProcessingValue()) {
                throw new IllegalStateException("Not yet processing value!");
            }
            int length = this.state.getLength();
            byte[] bArr = new byte[length];
            this.inputStream.readFully(bArr);
            this.state.updateValueBytesProcessed(length);
            return bArr;
        } catch (IOException e10) {
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        if (!markSupported()) {
            throw new IOException("mark/reset not supported");
        }
        this.inputStream.reset();
        this.state = this.markedState;
        this.markedState = null;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        if (j10 <= 0) {
            return 0L;
        }
        long jSkip = this.inputStream.skip(j10);
        this.state.updateValueBytesProcessed((int) jSkip);
        return jSkip;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skipToTag(int r4) throws java.io.IOException {
        /*
            r3 = this;
        L0:
            net.sf.scuba.tlv.TLVInputState r0 = r3.state
            boolean r0 = r0.isAtStartOfTag()
            if (r0 == 0) goto L9
            goto L30
        L9:
            net.sf.scuba.tlv.TLVInputState r0 = r3.state
            boolean r0 = r0.isAtStartOfLength()
            if (r0 == 0) goto L21
            r3.readLength()
            net.sf.scuba.tlv.TLVInputState r0 = r3.state
            int r0 = r0.getTag()
            boolean r0 = net.sf.scuba.tlv.TLVUtil.isPrimitive(r0)
            if (r0 == 0) goto L30
            goto L2d
        L21:
            net.sf.scuba.tlv.TLVInputState r0 = r3.state
            int r0 = r0.getTag()
            boolean r0 = net.sf.scuba.tlv.TLVUtil.isPrimitive(r0)
            if (r0 == 0) goto L30
        L2d:
            r3.skipValue()
        L30:
            int r0 = r3.readTag()
            if (r0 != r4) goto L37
            return
        L37:
            boolean r0 = net.sf.scuba.tlv.TLVUtil.isPrimitive(r0)
            if (r0 == 0) goto L0
            int r0 = r3.readLength()
            long r1 = r3.skipValue()
            int r2 = (int) r1
            if (r2 < r0) goto L49
            goto L0
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sf.scuba.tlv.TLVInputStream.skipToTag(int):void");
    }

    public String toString() {
        return this.state.toString();
    }
}
