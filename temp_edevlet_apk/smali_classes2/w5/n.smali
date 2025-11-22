.class public final Lw5/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lw5/o<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Ljava/util/ArrayList;

.field public static final e:Lw5/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/n<",
            "Lw5/o$a;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lw5/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/n<",
            "Lw5/o$b;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lw5/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lw5/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lw5/n;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    const-string v2, "android.app.Application"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const-string v2, "GmsCore_OpenSSL"

    .line 27
    .line 28
    const-string v3, "AndroidOpenSSL"

    .line 29
    .line 30
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_1
    const/4 v5, 0x2

    .line 41
    if-ge v4, v5, :cond_1

    .line 42
    .line 43
    aget-object v5, v2, v4

    .line 44
    .line 45
    invoke-static {v5}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_0
    new-array v6, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v5, v6, v1

    .line 58
    .line 59
    const-string v5, "Provider %s not available"

    .line 60
    .line 61
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sget-object v6, Lw5/n;->c:Ljava/util/logging/Logger;

    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    sput-object v3, Lw5/n;->d:Ljava/util/ArrayList;

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lw5/n;->d:Ljava/util/ArrayList;

    .line 82
    .line 83
    :goto_3
    new-instance v0, Lw5/n;

    .line 84
    .line 85
    new-instance v1, Lw5/o$a;

    .line 86
    .line 87
    invoke-direct {v1}, Lw5/o$a;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Lw5/n;-><init>(Lw5/o;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lw5/n;->e:Lw5/n;

    .line 94
    .line 95
    new-instance v0, Lw5/n;

    .line 96
    .line 97
    new-instance v1, Lw5/o$b;

    .line 98
    .line 99
    invoke-direct {v1}, Lw5/o$b;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1}, Lw5/n;-><init>(Lw5/o;)V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lw5/n;->f:Lw5/n;

    .line 106
    .line 107
    return-void
.end method

.method public constructor <init>(Lw5/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/n;->a:Lw5/o;

    sget-object p1, Lw5/n;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lw5/n;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lw5/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, p0, Lw5/n;->a:Lw5/o;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    :try_start_0
    invoke-interface {v4, p1, v3}, Lw5/o;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {v4, p1, v1}, Lw5/o;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
