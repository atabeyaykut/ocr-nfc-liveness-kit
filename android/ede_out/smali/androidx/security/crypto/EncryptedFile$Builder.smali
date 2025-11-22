.class public final Landroidx/security/crypto/EncryptedFile$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mFile:Ljava/io/File;

.field final mFileEncryptionScheme:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

.field mKeysetAlias:Ljava/lang/String;

.field mKeysetPrefName:Ljava/lang/String;

.field final mMasterKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroidx/security/crypto/MasterKey;Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/security/crypto/MasterKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StreamFiles"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "__androidx_security_crypto_encrypted_file_pref__"

    iput-object v0, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetPrefName:Ljava/lang/String;

    const-string v0, "__androidx_security_crypto_encrypted_file_keyset__"

    iput-object v0, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetAlias:Ljava/lang/String;

    iput-object p2, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFile:Ljava/io/File;

    iput-object p4, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFileEncryptionScheme:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroidx/security/crypto/MasterKey;->getKeyAlias()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mMasterKeyAlias:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "__androidx_security_crypto_encrypted_file_pref__"

    iput-object v0, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetPrefName:Ljava/lang/String;

    const-string v0, "__androidx_security_crypto_encrypted_file_keyset__"

    iput-object v0, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetAlias:Ljava/lang/String;

    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFile:Ljava/io/File;

    iput-object p4, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFileEncryptionScheme:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mMasterKeyAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroidx/security/crypto/EncryptedFile;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget v0, Lv5/d;->a:I

    .line 2
    .line 3
    new-instance v0, Lv5/a;

    .line 4
    .line 5
    invoke-direct {v0}, Lv5/a;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lv5/b;

    .line 13
    .line 14
    invoke-direct {v0}, Lv5/b;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ln5/p;->e(Ln5/f;Z)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lv5/g;

    .line 21
    .line 22
    invoke-direct {v0}, Lv5/g;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ln5/p;->f(Ln5/m;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lr5/a$a;

    .line 29
    .line 30
    invoke-direct {v0}, Lr5/a$a;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFileEncryptionScheme:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->getKeyTemplate()Ln5/e;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lr5/a$a;->e:Ln5/e;

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetAlias:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetPrefName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, v3}, Lr5/a$a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "android-keystore://"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mMasterKeyAlias:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lr5/a$a;->d(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lr5/a$a;->a()Lr5/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, v0, Lr5/a;->b:Ln5/h;

    .line 75
    .line 76
    invoke-virtual {v1}, Ln5/h;->b()Ln5/g;

    .line 77
    .line 78
    .line 79
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    .line 81
    const-class v0, Ln5/q;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ln5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ln5/q;

    .line 88
    .line 89
    new-instance v1, Landroidx/security/crypto/EncryptedFile;

    .line 90
    .line 91
    iget-object v2, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFile:Ljava/io/File;

    .line 92
    .line 93
    iget-object v3, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetAlias:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v4, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/security/crypto/EncryptedFile;-><init>(Ljava/io/File;Ljava/lang/String;Ln5/q;Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    monitor-exit v0

    .line 103
    throw v1
.end method

.method public setKeysetAlias(Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetAlias:Ljava/lang/String;

    return-object p0
.end method

.method public setKeysetPrefName(Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetPrefName:Ljava/lang/String;

    return-object p0
.end method
