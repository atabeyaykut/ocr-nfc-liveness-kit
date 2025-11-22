.class public final enum Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrefKeyEncryptionScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

.field public static final enum AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;


# instance fields
.field private final mDeterministicAeadKeyTemplate:Ln5/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 2
    .line 3
    invoke-static {}, Lu5/w;->v()Lu5/w$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 11
    .line 12
    check-cast v2, Lu5/w;

    .line 13
    .line 14
    invoke-static {v2}, Lu5/w;->t(Lu5/w;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lu5/w;

    .line 22
    .line 23
    new-instance v2, Lq5/a;

    .line 24
    .line 25
    invoke-direct {v2}, Lq5/a;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/a;->toByteArray()[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "type.googleapis.com/google.crypto.tink.AesSivKey"

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-static {v2, v1, v3}, Ln5/e;->a(Ljava/lang/String;[BI)Ln5/e;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "AES256_SIV"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-direct {v0, v2, v4, v1}, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;-><init>(Ljava/lang/String;ILn5/e;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 46
    .line 47
    new-array v1, v3, [Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 48
    .line 49
    aput-object v0, v1, v4

    .line 50
    .line 51
    sput-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->$VALUES:[Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 52
    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILn5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln5/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->mDeterministicAeadKeyTemplate:Ln5/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;
    .locals 1

    const-class v0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    return-object p0
.end method

.method public static values()[Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;
    .locals 1

    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->$VALUES:[Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    invoke-virtual {v0}, [Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    return-object v0
.end method


# virtual methods
.method public getKeyTemplate()Ln5/e;
    .locals 1

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->mDeterministicAeadKeyTemplate:Ln5/e;

    return-object v0
.end method
