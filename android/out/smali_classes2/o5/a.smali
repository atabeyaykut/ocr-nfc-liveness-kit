.class public final Lo5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo5/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lo5/c;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lo5/f;

    .line 7
    .line 8
    invoke-direct {v0}, Lo5/f;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lo5/g;

    .line 12
    .line 13
    invoke-direct {v0}, Lo5/g;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lo5/e;

    .line 17
    .line 18
    invoke-direct {v0}, Lo5/e;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lo5/i;

    .line 22
    .line 23
    invoke-direct {v0}, Lo5/i;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lo5/k;

    .line 27
    .line 28
    invoke-direct {v0}, Lo5/k;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lo5/h;

    .line 32
    .line 33
    invoke-direct {v0}, Lo5/h;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lo5/l;

    .line 37
    .line 38
    invoke-direct {v0}, Lo5/l;-><init>()V

    .line 39
    .line 40
    .line 41
    sget v0, Lu5/p0;->CONFIG_NAME_FIELD_NUMBER:I

    .line 42
    .line 43
    :try_start_0
    invoke-static {}, Lo5/a;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v1
.end method

.method public static a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget v0, Ls5/c;->a:I

    .line 2
    .line 3
    new-instance v0, Ls5/b;

    .line 4
    .line 5
    invoke-direct {v0}, Ls5/b;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ls5/a;

    .line 13
    .line 14
    invoke-direct {v0}, Ls5/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ls5/d;

    .line 21
    .line 22
    invoke-direct {v0}, Ls5/d;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ln5/p;->f(Ln5/m;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lo5/c;

    .line 29
    .line 30
    invoke-direct {v0}, Lo5/c;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lo5/e;

    .line 37
    .line 38
    invoke-direct {v0}, Lo5/e;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lo5/f;

    .line 45
    .line 46
    invoke-direct {v0}, Lo5/f;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 50
    .line 51
    .line 52
    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    .line 53
    .line 54
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    if-eqz v0, :cond_0

    .line 61
    .line 62
    new-instance v0, Lo5/g;

    .line 63
    .line 64
    invoke-direct {v0}, Lo5/g;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 68
    .line 69
    .line 70
    :cond_0
    new-instance v0, Lo5/h;

    .line 71
    .line 72
    invoke-direct {v0}, Lo5/h;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lo5/i;

    .line 79
    .line 80
    invoke-direct {v0}, Lo5/i;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lo5/k;

    .line 87
    .line 88
    invoke-direct {v0}, Lo5/k;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lo5/l;

    .line 95
    .line 96
    invoke-direct {v0}, Lo5/l;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lo5/b;

    .line 103
    .line 104
    invoke-direct {v0}, Lo5/b;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Ln5/p;->f(Ln5/m;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
