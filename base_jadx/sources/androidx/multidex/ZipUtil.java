package androidx.multidex;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* loaded from: classes.dex */
final class ZipUtil {
    private static final int BUFFER_SIZE = 16384;
    private static final int ENDHDR = 22;
    private static final int ENDSIG = 101010256;

    public static class CentralDirectory {
        long offset;
        long size;
    }

    public static long computeCrcOfCentralDir(RandomAccessFile randomAccessFile, CentralDirectory centralDirectory) throws IOException {
        CRC32 crc32 = new CRC32();
        long j10 = centralDirectory.size;
        randomAccessFile.seek(centralDirectory.offset);
        int r10 = (int) Math.min(16384L, j10);
        byte[] bArr = new byte[16384];
        while (true) {
            int r102 = randomAccessFile.read(bArr, 0, r10);
            if (r102 == -1) {
                break;
            }
            crc32.update(bArr, 0, r102);
            j10 -= r102;
            if (j10 == 0) {
                break;
            }
            r10 = (int) Math.min(16384L, j10);
        }
        return crc32.getValue();
    }

    public static CentralDirectory findCentralDirectory(RandomAccessFile randomAccessFile) throws IOException {
        long length = randomAccessFile.length() - 22;
        if (length < 0) {
            throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
        }
        long j10 = length - 65536;
        long j11 = j10 >= 0 ? j10 : 0L;
        int r42 = Integer.reverseBytes(ENDSIG);
        do {
            randomAccessFile.seek(length);
            if (randomAccessFile.readInt() == r42) {
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                CentralDirectory centralDirectory = new CentralDirectory();
                centralDirectory.size = Integer.reverseBytes(randomAccessFile.readInt()) & BodyPartID.bodyIdMax;
                centralDirectory.offset = Integer.reverseBytes(randomAccessFile.readInt()) & BodyPartID.bodyIdMax;
                return centralDirectory;
            }
            length--;
        } while (length >= j11);
        throw new ZipException("End Of Central Directory signature not found");
    }

    public static long getZipCrc(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return computeCrcOfCentralDir(randomAccessFile, findCentralDirectory(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }
}
