package ed;

import ed.z;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileTime;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

@IgnoreJRERequirement
/* loaded from: classes2.dex */
public final class u extends t {
    public static Long m(FileTime fileTime) {
        Long lValueOf = Long.valueOf(fileTime.toMillis());
        if (lValueOf.longValue() != 0) {
            return lValueOf;
        }
        return null;
    }

    @Override // ed.t, ed.k
    public final void b(z source, z target) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        kotlin.jvm.internal.h.f(target, "target");
        try {
            Files.move(source.r(), target.r(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e10) {
            throw new FileNotFoundException(e10.getMessage());
        }
    }

    @Override // ed.t, ed.k
    public final j i(z path) throws IOException {
        z zVarA;
        kotlin.jvm.internal.h.f(path, "path");
        Path pathR = path.r();
        try {
            BasicFileAttributes attributes = Files.readAttributes(pathR, (Class<BasicFileAttributes>) BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            Path symbolicLink = attributes.isSymbolicLink() ? Files.readSymbolicLink(pathR) : null;
            boolean zIsRegularFile = attributes.isRegularFile();
            boolean zIsDirectory = attributes.isDirectory();
            if (symbolicLink == null) {
                zVarA = null;
            } else {
                String str = z.f5363b;
                zVarA = z.a.a(symbolicLink.toString(), false);
            }
            Long lValueOf = Long.valueOf(attributes.size());
            FileTime fileTimeCreationTime = attributes.creationTime();
            Long lM = fileTimeCreationTime == null ? null : m(fileTimeCreationTime);
            FileTime fileTimeLastModifiedTime = attributes.lastModifiedTime();
            Long lM2 = fileTimeLastModifiedTime == null ? null : m(fileTimeLastModifiedTime);
            FileTime fileTimeLastAccessTime = attributes.lastAccessTime();
            return new j(zIsRegularFile, zIsDirectory, zVarA, lValueOf, lM, lM2, fileTimeLastAccessTime != null ? m(fileTimeLastAccessTime) : null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }

    @Override // ed.t
    public final String toString() {
        return "NioSystemFileSystem";
    }
}
