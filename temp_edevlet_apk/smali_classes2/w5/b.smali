.class public final Lw5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/q;


# static fields
.field public static final d:Lw5/b$a;


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw5/b$a;

    invoke-direct {v0}, Lw5/b$a;-><init>()V

    sput-object v0, Lw5/b;->d:Lw5/b$a;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lw5/a0;->a(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lw5/b;->a:Ljavax/crypto/spec/SecretKeySpec;

    sget-object p1, Lw5/b;->d:Lw5/b$a;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lw5/b;->c:I

    const/16 v0, 0xc

    if-lt p2, v0, :cond_0

    if-gt p2, p1, :cond_0

    iput p2, p0, Lw5/b;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid IV size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const v1, 0x7fffffff

    .line 3
    .line 4
    .line 5
    iget v2, p0, Lw5/b;->b:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    add-int/2addr v0, v2

    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    invoke-static {v2}, Lw5/v;->a(I)[B

    .line 15
    .line 16
    .line 17
    move-result-object v9

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v9, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    array-length v8, p1

    .line 24
    iget v10, p0, Lw5/b;->b:I

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    move-object v3, p0

    .line 28
    move-object v5, p1

    .line 29
    move-object v6, v0

    .line 30
    invoke-virtual/range {v3 .. v10}, Lw5/b;->c(Z[B[BII[BI)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 35
    .line 36
    const-string v0, "plaintext length can not exceed "

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final b([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lw5/b;->b:I

    if-lt v0, v1, :cond_0

    new-array v8, v1, [B

    const/4 v0, 0x0

    invoke-static {p1, v0, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    iget v6, p0, Lw5/b;->b:I

    sub-int/2addr v0, v6

    new-array v0, v0, [B

    array-length v1, p1

    sub-int v7, v1, v6

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v9}, Lw5/b;->c(Z[B[BII[BI)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "ciphertext too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Z[B[BII[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lw5/b;->d:Lw5/b$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/crypto/Cipher;

    iget v0, p0, Lw5/b;->c:I

    new-array v0, v0, [B

    const/4 v2, 0x0

    iget v3, p0, Lw5/b;->b:I

    invoke-static {p6, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p6, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v0, p0, Lw5/b;->a:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v1, p1, v0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne p1, p5, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "stored output\'s length does not match input\'s length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
