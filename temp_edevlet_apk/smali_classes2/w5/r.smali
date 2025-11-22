.class public abstract Lw5/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lw5/y;

    invoke-direct {v0, p0, p1, p2}, Lw5/y;-><init>(Lw5/r;Ljava/io/InputStream;[B)V

    return-object v0
.end method

.method public final b([BLjava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lw5/z;

    invoke-direct {v0, p0, p2, p1}, Lw5/z;-><init>(Lw5/r;Ljava/io/FileOutputStream;[B)V

    return-object v0
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()Lw5/w;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract h([B)Lw5/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
