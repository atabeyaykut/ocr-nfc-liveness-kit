package org.bouncycastle.crypto.examples;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.generators.DESedeKeyGenerator;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class DESExample {
    private PaddedBufferedBlockCipher cipher;
    private boolean encrypt;
    private BufferedInputStream in;
    private byte[] key;
    private BufferedOutputStream out;

    public DESExample() {
        this.encrypt = true;
        this.cipher = null;
        this.in = null;
        this.out = null;
        this.key = null;
    }

    public DESExample(String str, String str2, String str3, boolean z10) throws IOException {
        PrintStream printStream;
        StringBuilder sb2;
        SecureRandom secureRandom;
        SecureRandom secureRandom2 = null;
        this.cipher = null;
        this.in = null;
        this.out = null;
        this.key = null;
        this.encrypt = z10;
        try {
            this.in = new BufferedInputStream(new FileInputStream(str));
        } catch (FileNotFoundException unused) {
            System.err.println("Input file not found [" + str + "]");
            System.exit(1);
        }
        try {
            this.out = new BufferedOutputStream(new FileOutputStream(str2));
        } catch (IOException unused2) {
            System.err.println("Output file not created [" + str2 + "]");
            System.exit(1);
        }
        if (z10) {
            try {
                secureRandom = new SecureRandom();
            } catch (Exception unused3) {
            }
            try {
                secureRandom.setSeed("www.bouncycastle.org".getBytes());
            } catch (Exception unused4) {
                secureRandom2 = secureRandom;
                try {
                    System.err.println("Hmmm, no SHA1PRNG, you need the Sun implementation");
                    System.exit(1);
                    secureRandom = secureRandom2;
                    KeyGenerationParameters keyGenerationParameters = new KeyGenerationParameters(secureRandom, 192);
                    DESedeKeyGenerator dESedeKeyGenerator = new DESedeKeyGenerator();
                    dESedeKeyGenerator.init(keyGenerationParameters);
                    this.key = dESedeKeyGenerator.generateKey();
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str3));
                    byte[] bArrEncode = Hex.encode(this.key);
                    bufferedOutputStream.write(bArrEncode, 0, bArrEncode.length);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    return;
                } catch (IOException unused5) {
                    printStream = System.err;
                    sb2 = new StringBuilder("Could not decryption create key file [");
                }
            }
            KeyGenerationParameters keyGenerationParameters2 = new KeyGenerationParameters(secureRandom, 192);
            DESedeKeyGenerator dESedeKeyGenerator2 = new DESedeKeyGenerator();
            dESedeKeyGenerator2.init(keyGenerationParameters2);
            this.key = dESedeKeyGenerator2.generateKey();
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(str3));
            byte[] bArrEncode2 = Hex.encode(this.key);
            bufferedOutputStream2.write(bArrEncode2, 0, bArrEncode2.length);
            bufferedOutputStream2.flush();
            bufferedOutputStream2.close();
            return;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str3));
            int r10 = bufferedInputStream.available();
            byte[] bArr = new byte[r10];
            bufferedInputStream.read(bArr, 0, r10);
            this.key = Hex.decode(bArr);
            return;
        } catch (IOException unused6) {
            printStream = System.err;
            sb2 = new StringBuilder("Decryption key file not found, or not valid [");
        }
        sb2.append(str3);
        sb2.append("]");
        printStream.println(sb2.toString());
        System.exit(1);
    }

    public static void main(String[] strArr) throws IllegalStateException, DataLengthException, IOException, IllegalArgumentException {
        String str;
        boolean z10 = true;
        if (strArr.length < 2) {
            new DESExample();
            System.err.println("Usage: java " + DESExample.class.getName() + " infile outfile [keyfile]");
            System.exit(1);
        }
        String str2 = strArr[0];
        String str3 = strArr[1];
        if (strArr.length > 2) {
            str = strArr[2];
            z10 = false;
        } else {
            str = "deskey.dat";
        }
        new DESExample(str2, str3, str, z10).process();
    }

    private void performDecrypt(byte[] bArr) throws IllegalStateException, DataLengthException, IOException, IllegalArgumentException {
        this.cipher.init(false, new KeyParameter(bArr));
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.in));
        byte[] bArr2 = null;
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    try {
                        break;
                    } catch (CryptoException unused) {
                        return;
                    }
                }
                byte[] bArrDecode = Hex.decode(line);
                bArr2 = new byte[this.cipher.getOutputSize(bArrDecode.length)];
                int r22 = this.cipher.processBytes(bArrDecode, 0, bArrDecode.length, bArr2, 0);
                if (r22 > 0) {
                    this.out.write(bArr2, 0, r22);
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                return;
            }
        }
        int r02 = this.cipher.doFinal(bArr2, 0);
        if (r02 > 0) {
            this.out.write(bArr2, 0, r02);
        }
    }

    private void performEncrypt(byte[] bArr) throws IllegalStateException, DataLengthException, IOException, IllegalArgumentException {
        this.cipher.init(true, new KeyParameter(bArr));
        byte[] bArr2 = new byte[47];
        byte[] bArr3 = new byte[this.cipher.getOutputSize(47)];
        while (true) {
            try {
                int r42 = this.in.read(bArr2, 0, 47);
                if (r42 <= 0) {
                    try {
                        break;
                    } catch (CryptoException unused) {
                        return;
                    }
                }
                int r12 = this.cipher.processBytes(bArr2, 0, r42, bArr3, 0);
                if (r12 > 0) {
                    byte[] bArrEncode = Hex.encode(bArr3, 0, r12);
                    this.out.write(bArrEncode, 0, bArrEncode.length);
                    this.out.write(10);
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                return;
            }
        }
        int r02 = this.cipher.doFinal(bArr3, 0);
        if (r02 > 0) {
            byte[] bArrEncode2 = Hex.encode(bArr3, 0, r02);
            this.out.write(bArrEncode2, 0, bArrEncode2.length);
            this.out.write(10);
        }
    }

    private void process() throws IllegalStateException, DataLengthException, IOException, IllegalArgumentException {
        this.cipher = new PaddedBufferedBlockCipher(new CBCBlockCipher(new DESedeEngine()));
        if (this.encrypt) {
            performEncrypt(this.key);
        } else {
            performDecrypt(this.key);
        }
        try {
            this.in.close();
            this.out.flush();
            this.out.close();
        } catch (IOException e10) {
            System.err.println("exception closing resources: " + e10.getMessage());
        }
    }
}
